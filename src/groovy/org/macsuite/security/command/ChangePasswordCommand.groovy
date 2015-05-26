package org.macsuite.security.command

import grails.validation.Validateable

/**
 * Created by tony on 5/23/15.
 */
@Validateable
class ChangePasswordCommand {
    String oldPassword
    String newPassword
    String confirmPassword

    static constraints = {
        oldPassword blank: false
        newPassword minSize: 8
        confirmPassword validator: {value,object->
            if(value != object.newPassword){
                return 'passwordsMustMatch'
            }
        }
    }
}
