import org.macsuite.security.Role
import org.macsuite.security.UserData
import org.macsuite.security.UserDataRole

class BootStrap {

    def init = { servletContext ->
        createAdmin()
    }

    def createAdmin(){
        def adminRole = Role.findByAuthority('ROLE_ADMIN')?:new Role(authority:'ROLE_ADMIN').save(failOnError:true)
        def user = UserData.findByUsername('super')?:new UserData(username:'super',firstName: "Admin", lastName: 'User', email: 'mcclainan@gmail.com', enabled:true,password:'Love@shine1star').save(failOnError:true)
        if(!user.authorities.contains(adminRole)){
            UserDataRole.create(user,adminRole,true)
        }
        def userRole = Role.findByAuthority('ROLE_USER')?:new Role(authority:'ROLE_USER').save(failOnError:true)
        user = UserData.findByUsername('standard')?:new UserData(username:'standard',firstName: "Standard", lastName: 'User', email: 'email@gmail.com', enabled:true,password:'password').save(failOnError:true)
        if(!user.authorities.contains(userRole)){
            UserDataRole.create(user,userRole,true)
        }
    }

    def destroy = {
    }
}
