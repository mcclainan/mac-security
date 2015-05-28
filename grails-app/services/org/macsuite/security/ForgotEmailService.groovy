package org.macsuite.security

import grails.transaction.Transactional
import groovy.time.TimeCategory
import org.macsuite.security.org.macsuite.security.email.EmailService

@Transactional
class ForgotEmailService {
    EmailService emailService
    Boolean sendEmail(String email) {
        UserData user = UserData.findByEmail(email)
        if(user){
            String token = UUID.randomUUID().toString()

            ForgotPasswordSession fpSession = ForgotPasswordSession.findByUuid(user.id)
            if(fpSession){
                fpSession.delete(flush: true)
            }

            fpSession = new ForgotPasswordSession(token: token, uuid: user.id, email: email)
            fpSession.save(flush:true)
            emailService.forgotPasswordContinue(email, token)
            return true
        }
        else{
            return false
        }
    }

    def validateToken(String token){
        ForgotPasswordSession fpsession = ForgotPasswordSession.findByToken(token)
        if(fpsession){
            Date date
            use(TimeCategory){
                date = new Date() - 2.hour
            }
            if(fpsession.dateCreated<date){
                return 'expired'
            }
        }
        else{
            return 'invalid'
        }
        return [email: fpsession.email]
    }
}
