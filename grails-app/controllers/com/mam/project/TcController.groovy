package com.mam.project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TcController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tc.list(params), model:[tcInstanceCount: Tc.count()]
    }

    def indexPlanned(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        println Tc.findByTcStatus(TcStatus.PLANNED)
        return render(view: "index",model: [tcInstanceList: Tc.findAllByTcStatus(TcStatus.PLANNED), tcInstanceCount:Tc.countByTcStatus(TcStatus.PLANNED),filterParams:params])
    }

    def show(Tc tcInstance) {
        respond tcInstance
    }

    def create() {
        respond new Tc(params)
    }

    @Transactional
    def save(Tc tcInstance) {
        if (tcInstance == null) {
            notFound()
            return
        }

        if (tcInstance.hasErrors()) {
            respond tcInstance.errors, view:'create'
            return
        }

        tcInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tc.label', default: 'Tc'), tcInstance.id])
                redirect tcInstance
            }
            '*' { respond tcInstance, [status: CREATED] }
        }
    }

    def edit(Tc tcInstance) {
        respond tcInstance
    }

    @Transactional
    def update(Tc tcInstance) {
        if (tcInstance == null) {
            notFound()
            return
        }

        if (tcInstance.hasErrors()) {
            respond tcInstance.errors, view:'edit'
            return
        }

        tcInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tc.label', default: 'Tc'), tcInstance.id])
                redirect tcInstance
            }
            '*'{ respond tcInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tc tcInstance) {

        if (tcInstance == null) {
            notFound()
            return
        }

        tcInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tc.label', default: 'Tc'), tcInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tc.label', default: 'Tc'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
