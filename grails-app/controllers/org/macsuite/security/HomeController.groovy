package org.macsuite.security

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class HomeController {

    def index() {render "<h1>SUCCESS</h1>"}
}
