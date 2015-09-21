package com.mam.project

class Note {

    static auditable = true

    String note
    Date date
    Employee employee


    static constraints = {
        note(nullable: false,size: 3..16000)
        date(nullable: false)
        employee(nullable: false)
    }
}
