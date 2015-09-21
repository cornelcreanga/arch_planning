package com.mam.project



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SecurityReviewController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 20, 100)
        respond SecurityReview.list(params), model:[securityReviewInstanceCount: SecurityReview.count()]
    }

    def show(SecurityReview securityReviewInstance) {
        respond securityReviewInstance
    }

    def create() {
        respond new SecurityReview(params)
    }

    @Transactional
    def save(SecurityReview securityReviewInstance) {
        if (securityReviewInstance == null) {
            notFound()
            return
        }

        if (securityReviewInstance.hasErrors()) {
            respond securityReviewInstance.errors, view:'create'
            return
        }

        securityReviewInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'securityReview.label', default: 'SecurityReview'), securityReviewInstance.id])
                redirect securityReviewInstance
            }
            '*' { respond securityReviewInstance, [status: CREATED] }
        }
    }

    def edit(SecurityReview securityReviewInstance) {
        respond securityReviewInstance
    }

    @Transactional
    def update(SecurityReview securityReviewInstance) {
        if (securityReviewInstance == null) {
            notFound()
            return
        }

        if (securityReviewInstance.hasErrors()) {
            respond securityReviewInstance.errors, view:'edit'
            return
        }

        securityReviewInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SecurityReview.label', default: 'SecurityReview'), securityReviewInstance.id])
                redirect securityReviewInstance
            }
            '*'{ respond securityReviewInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SecurityReview securityReviewInstance) {

        if (securityReviewInstance == null) {
            notFound()
            return
        }

        securityReviewInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SecurityReview.label', default: 'SecurityReview'), securityReviewInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'securityReview.label', default: 'SecurityReview'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
