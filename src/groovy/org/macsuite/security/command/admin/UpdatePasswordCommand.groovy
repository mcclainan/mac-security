package org.macsuite.security.command.admin

import grails.validation.Validateable

/**
 * Created by tony on 5/23/15.
 */
@Validateable
class UpdatePasswordCommand {
    Long id
    String password

    static constraints = {
        password minSize: 8
    }
}
