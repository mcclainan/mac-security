package org.macsuite.security.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.security.Role
import org.macsuite.security.UserData
import org.macsuite.security.UserDataRole

@Secured(['ROLE_ADMIN'])
class AdminRoleController {

    def index() {
        [roleList: Role.listOrderByAuthority()]
    }

    def createRole(){

    }

    def saveRole(){
        String authority = params.authority
        authority = authority.toLowerCase().replace('role_','')
        authority = "ROLE_" + authority.toUpperCase()
        new Role(authority: authority).save(failOnError: true, flush: true)
        redirect action:"index"
    }

    def editRole(){
        def role = Role.get(params.id)
        def usersInRole
        def usersNotInRole
        try{

            usersInRole = UserDataRole.findAllByRole(role)*.userData
            if(UserDataRole.findAllByRole(role)){
                usersNotInRole = UserData.findAllByIdNotInList(usersInRole*.id)?:UserData.list()
            }else{
                usersNotInRole = UserData.list()
            }

        }catch (NullPointerException e){

        }
        [role:role,usersInRole:usersInRole,usersNotInRole:usersNotInRole]
    }

    def updateUsers(){
        UserData user = UserData.get(params.userId)
        Role role = Role.get(params.roleId)
        if(params.type == 'add'){
            UserDataRole.create(user,role,true)
        }else{
            def userDataRole = UserDataRole.findByUserDataAndRole(user,role)
            userDataRole.delete(flush: true)
        }
        redirect action: 'editRole', id: params.roleId
    }

    def editUserRole(){
        def user = UserData.get(params.id)
        def availableRoles
        try{
            availableRoles = UserDataRole.findAllByRoleNotInList(user.authorities)*.role
        }catch (NullPointerException e){
            availableRoles = Role.list()
        }
        [user:user, availableRoles:availableRoles]
    }

    def updateUserRole(){
        UserData user = UserData.get(params.userId)
        Role role = Role.get(params.roleId)
        if(params.type == 'add'){
            UserDataRole.create(user,role,true)
        }else{
            def userDataRole = UserDataRole.findByUserDataAndRole(user,role)
            userDataRole.delete(flush: true)
        }
        redirect action: 'editUserRole', id: params.roleId
    }

}
