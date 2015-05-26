package org.macsuite.security.command.admin

import grails.validation.Validateable
import org.macsuite.security.Role
import org.macsuite.security.UserData

/**
 * Created by tony on 5/26/15.
 */
@Validateable
class EditUserCommand {
    Long    id
    String  username
    String  email
    String  firstName
    String  lastName
    String  nicName
    boolean accountLocked
    boolean passwordExpired
    Set<Role> roles

    static constraints = {
        id nullable: false
        username nullable:false
        email nullable:true, email: true
        firstName nullable:true
        lastName nullable:true
        nicName nullable:true
        accountLocked nullable:true
        passwordExpired nullable:true
    }

    public EditUserCommand(){

    }

    public EditUserCommand(UserData user){
        this.id=user.id
        this.username=user.username
        this.email=user.email
        this.firstName=user.firstName
        this.lastName=user.lastName
        this.nicName=user.nicName
        this.accountLocked=user.accountLocked
        this.passwordExpired=user.passwordExpired
        this.roles=user.authorities
    }

    public UserData bind(UserData user){
        user.id=this.id
        user.username=this.username
        user.email=this.email
        user.firstName=this.firstName
        user.lastName=this.lastName
        user.nicName=this.nicName
        user.accountLocked=this.accountLocked
        user.passwordExpired=this.passwordExpired
        return user
    }
}
