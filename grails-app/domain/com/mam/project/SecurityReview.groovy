package com.mam.project

class SecurityReview {


    static SecurityReview NOT_NEEDED = new SecurityReview (name:"Not needed")

    String name

    static auditable = true

    Date reviewDate

    static hasMany = [notes: Note,reviewers:Employee]

    static constraints = {
        name(nullable:false)
        reviewDate(nullable:false)
    }

}
