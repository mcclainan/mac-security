package org.macsuite.security.command

import grails.validation.Validateable
import org.macsuite.security.UserData

/**
 * Created by tony on 5/23/15.
 */
@Validateable
class ChangeForgotPasswordCommand {
    String id
    String username
    String newPassword
    String confirmPassword

    static constraints = {
        newPassword minSize: 8, validator: {value,object->if(value==object.username){return "passwordUsernameMatch"}}
        confirmPassword validator: {value,object->if(value==object.newPassword){return "confirmPasswordMismatch"}}
    }

    public ChangeForgotPasswordCommand(){

    }

    public ChangeForgotPasswordCommand(UserData user){
        this.id = user.id
        this.username = user.username
    }
}
