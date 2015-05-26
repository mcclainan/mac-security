package org.macsuite.security.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.security.Role
import org.macsuite.security.UserData
import org.macsuite.security.UserDataRole
import org.macsuite.security.command.admin.CreateUserCommand
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
        [roleList: Role.listOrderByAuthority()]
    }

    def saveUser(CreateUserCommand command){
        if(command.hasErrors()){
            render view: 'createUser', model: [command:command]
            return
        }
        UserData user = command.bind(new UserData())
        user.save(flush: true)
        UserDataRole.create(user,command.role,true)
        flash.message="User ${user.username} has been created."
        redirect action:'index'
    }

    def deleteUser(){
        UserData user = UserData.get(params.id)
        String userName = user.username
        user.delete(flush: true)
        flash.message="User ${userName} has been deleted."
        redirect action:'index'
    }

    def editPassword(){

    }

    def updatePassword(){

    }
}
