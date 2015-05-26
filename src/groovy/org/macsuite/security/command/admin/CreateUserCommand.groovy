package org.macsuite.security.command.admin

import grails.validation.Validateable
import org.macsuite.security.Role
import org.macsuite.security.UserData

/**
 * Created by tony on 5/26/15.
 */
@Validateable
class CreateUserCommand {
    String  username
    String  password
    String  confirmPassword
    String  email
    String  firstName
    String  lastName
    String  nicName
    Role    role

    static constraints = {
        username nullable:false
        email nullable:true, email: true
        firstName nullable:true
        lastName nullable:true
        nicName nullable:true
        password minSize: 8
        confirmPassword validator: {value,object->
            if(value != object.password){
                return 'passwordsMustMatch'
            }
        }
    }

    UserData bind(UserData user){
        user.username=this.username
        user.password=this.password
        user.email=this.email
        user.firstName=this.firstName
        user.lastName=this.lastName
        user.nicName=this.nicName
        return user
    }
}
