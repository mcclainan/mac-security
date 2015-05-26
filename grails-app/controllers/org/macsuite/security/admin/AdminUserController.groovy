package org.macsuite.security.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.security.UserData
import org.macsuite.security.command.admin.EditUserCommand

@Secured(['ROLE_ADMIN'])
class AdminUserController {

    def index() {
        [userList:UserData.listOrderByUsername()]
    }

    def editUser(){
        UserData user = UserData.get(params.id)
        if(!user){
            flash.message = 'User not found'
            redirect action:'index'
            return
        }
        EditUserCommand command = new EditUserCommand(user)
        [command:command]
    }

    def updateUser(EditUserCommand command){
        if(command.hasErrors()){
            render view: 'editUser', model: [command:command]
            return
        }
        UserData user = command.bind(UserData.get(command.id))
        user.save(flush: true)
        flash.message = "User Updated"
        redirect action: 'editUser', id: command.id
    }

    def createUser(){

    }

    def deleteUser(){

    }

    def editPassword(){

    }

    def updatePassword(){

    }
}
