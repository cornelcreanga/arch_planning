package com.mam.project

class Employee {

    static auditable = true

    String name
    String code

    public String toString() {
        name + ' (' + code + ')'
    }

    static constraints = {
        name(nullable: false,size: 3..50)
        code(nullable: false,size: 3..20)
    }

}
