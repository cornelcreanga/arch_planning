package com.mam.project

class Link {

    static auditable = true

    String note
    String link
    boolean generic = false

    static constraints = {
        note(nullable: false)
        link(nullable: false)
    }

    public String toString() {
        note
    }
}
