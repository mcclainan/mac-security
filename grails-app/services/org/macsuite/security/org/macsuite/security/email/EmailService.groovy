package org.macsuite.security.org.macsuite.security.email

import grails.plugin.mail.MailService
import grails.transaction.Transactional
import org.codehaus.groovy.grails.commons.GrailsApplication

@Transactional
class EmailService {
    MailService mailService
    GrailsApplication grailsApplication

    def forgotPasswordContinue(String email,String token) {
        def registrationLink = "${grailsApplication.config.grails.serverURL}/user/changeForgotPassword/${token}"

        sendMail{
            to email
            subject 'Continue Mac Security email recovery'
            html([view:"/templates/email/forgotPassword", model:[registrationLink:registrationLink]])
        }
    }

}
