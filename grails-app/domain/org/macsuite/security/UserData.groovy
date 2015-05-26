package org.macsuite.security

class UserData {

	transient springSecurityService

	String  username
	String  password
	String  email
	String  firstName
	String  lastName
	String  nicName
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		email nullable: true
		firstName nullable:true
		lastName nullable:true
		nicName nullable:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserDataRole.findAllByUserData(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	boolean isPasswordAMatch(String password1){
		this.password == springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password1) : password1
	}
}
