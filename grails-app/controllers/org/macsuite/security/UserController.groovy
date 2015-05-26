package org.macsuite.security

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.security.command.command.ChangeForgotPasswordCommand
import org.macsuite.security.command.command.ChangePasswordCommand
import org.macsuite.security.command.command.EditProfileCommand
import org.macsuite.security.command.command.ForgotPasswordCommand

@Secured(['IS_AUTHENTICATED_FULLY'])
class UserController {
    def msg
    SpringSecurityService springSecurityService
    ForgotEmailService forgotEmailService

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

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def forgotPassword(){

    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def sendEmail(ForgotPasswordCommand command){
        if(command.hasErrors()){
            render view: 'forgotPassword', model: [command:command]
            return
        }
        if(!forgotEmailService.sendEmail(command.email)){
            msg=message(code: 'user.sendEmail.noAccount',args: [email])
            render view: 'forgotPassword', model: [command:command,msg:msg]
            return
        }
        [email:command.email]
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def changeForgotPassword(){
        String token = params.id 
        def reslut = forgotEmailService.validateToken(token)
        if(result instanceof String){
            return render view: 'invalidToken', model:[reason:reslut]
        }
        UserData user = UserData.findByEmail(result.email)
        [command: new ChangeForgotPasswordCommand(UserData.findByEmail(reslut.email))]
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def updateForgotPassword(ChangeForgotPasswordCommand command){
        if(command.hasErrors()){
            render view: 'changeForgotPassword', model: [command:command]
            return
        }
        UserData user = UserData.get(command.id)
        user.password=command.newPassword
        user.save(flush: true)
        redirect uri:'/'
    }
}
