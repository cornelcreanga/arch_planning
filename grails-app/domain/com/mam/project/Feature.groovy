package com.mam.project

class Feature {

    static auditable = true

    String name
    FeatureStatus featureStatus = FeatureStatus.PLANNED
    Criticalness criticalness = Criticalness.TO_BE_DEFINED
    Employee securityMentor
    SecurityReview initialSecurityReview
    Tc tc
    Date startDate;
    Date endDate;

    static belongsTo = [project : Project]
    static hasMany = [notes: Note,jira:Link]


    static constraints = {
        name(nullable: false,size: 3..100)
        criticalness(nullable: false)
        securityMentor(nullable: false)
        initialSecurityReview(nullable: true)
        tc(nullable: true)
        startDate(nullable: true)
        endDate(nullable: true)
        featureStatus(nullable: false)

    }

    public String toString() {
        name
    }
}
