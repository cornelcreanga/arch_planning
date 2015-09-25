package com.mam.project

class Tc {

    static Tc NOT_NEEDED = new Tc (name:"Not needed")

    static auditable = true

    String name;
    Date plannedDate
    Date startDate
    Date endDate
    TcStatus tcStatus
    SecurityReview review

    static hasMany = [notes: Note,reviewers:Employee,jira:Link]
    static belongsTo = [feature : Feature]

    static constraints = {
        name(nullable: false)
        plannedDate(nullable: true)
        startDate(nullable: true)
        endDate(nullable: true)
        review(nullable: true)
    }
    static mapping = {
        tcStatus(enumType: "string")
    }
    Tc NOT_NEEDED() { new Tc (name:"Not needed") }
    Tc PLANNED() { new Tc (name:"Planned") }

    String toString() {
        name
    }

}
