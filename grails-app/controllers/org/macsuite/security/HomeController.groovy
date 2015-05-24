package org.macsuite.security

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class HomeController {
    SpringSecurityService springSecurityService
    def index() {
        def user = UserData.get(springSecurityService.principal.properties.id)
        [user:user]
    }
}
