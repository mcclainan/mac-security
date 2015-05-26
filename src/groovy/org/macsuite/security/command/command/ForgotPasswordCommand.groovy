package org.macsuite.security.command.command

import grails.validation.Validateable

/**
 * Created by tony on 5/24/15.
 */
@Validateable
class ForgotPasswordCommand {
    String email
    static constraints = {
        email blank:false,email: true
    }
}
