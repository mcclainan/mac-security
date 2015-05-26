package org.macsuite.security

class ForgotPasswordSession {
    String token
    String uuid
    String email
    Date dateCreated
    static constraints = {
        uuid blank: false, unique: true
        email blank: false, email: true
        dateCreated nullable: true
    }
}
