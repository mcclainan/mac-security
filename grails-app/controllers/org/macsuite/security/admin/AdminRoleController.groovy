package org.macsuite.security.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.security.Role

@Secured(['ROLE_ADMIN'])
class AdminRoleController {

    def index() {
        [roleList: Role.listOrderByAuthority()]
    }
}
