package org.macsuite.security.command

import grails.validation.Validateable

/**
 * Created by tony on 5/22/15.
 */
@Validateable
class EditProfileCommand {
    String username
    String email
    String firstName
    String lastName
    String nicName

    static constraints={
        username nullable: false
        email email: true, nullable: true
        firstName nullable: true
        lastName nullable: true
        nicName nullable: true
    }
}
