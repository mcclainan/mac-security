package org.macsuite.security

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.security.command.command.ChangePasswordCommand
import org.macsuite.security.command.command.EditProfileCommand
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.crypto.password.PasswordEncoder

@Secured(['IS_AUTHENTICATED_FULLY'])
class UserController {
    def msg
    SpringSecurityService springSecurityService

    def index() {
        redirect(controller: 'home')
    }

    def editProfile(){
        EditProfileCommand command = new EditProfileCommand()
        UserData user = UserData.get(springSecurityService.principal.properties.id)
        bindData(command,user.properties, [exclude:['password','enabled','accountExpired','accountLocked','passwordExpired']])
        [command:command]
    }

    def updateProfile(EditProfileCommand command){
        if(command.hasErrors()){
            render(view: 'editProfile', model: [command:command])
            return
        }
        UserData user = UserData.get(springSecurityService.principal.properties.id)
        bindData(user,command.properties)
        user.save(flush:true)
        redirect(action: 'index')
    }

    def changePassword(){

    }

    def updatePassword(ChangePasswordCommand command){
        if(command.hasErrors()){
            render view:'changePassword', model: [command:command]
            return
        }
        UserData user = UserData.get(springSecurityService.principal.properties.id)
        if(!springSecurityService.passwordEncoder.isPasswordValid(user.password,command.oldPassword,null)){
            msg = message(code:'user.changePassword.mismatch')
            render view:'changePassword', model: [command:command,msg:msg]
            return
        }
        user.password = command.newPassword
        user.save(flush: true)
        redirect(uri:'/')
    }
}
