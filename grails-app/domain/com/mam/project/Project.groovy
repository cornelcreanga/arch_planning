package com.mam.project

class Project {

    static auditable = true

    Criticalness criticalness = Criticalness.TO_BE_DEFINED
    String name
    Employee responsible

    static hasMany = [features: Feature, repositories:Link,jira:Link]

    static constraints = {
        name(nullable:false,size:3..60)
        responsible(nullable:false)
        criticalness(nullable:false)
    }

    public String toString() {
        name
    }
}
