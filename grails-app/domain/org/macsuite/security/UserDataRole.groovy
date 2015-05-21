package org.macsuite.security

import org.apache.commons.lang.builder.HashCodeBuilder

class UserDataRole implements Serializable {

	private static final long serialVersionUID = 1

	UserData userData
	Role role

	boolean equals(other) {
		if (!(other instanceof UserDataRole)) {
			return false
		}

		other.userData?.id == userData?.id &&
		other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (userData) builder.append(userData.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static UserDataRole get(long userDataId, long roleId) {
		UserDataRole.where {
			userData == UserData.load(userDataId) &&
			role == Role.load(roleId)
		}.get()
	}

	static boolean exists(long userDataId, long roleId) {
		UserDataRole.where {
			userData == UserData.load(userDataId) &&
			role == Role.load(roleId)
		}.count() > 0
	}

	static UserDataRole create(UserData userData, Role role, boolean flush = false) {
		def instance = new UserDataRole(userData: userData, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(UserData u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UserDataRole.where {
			userData == UserData.load(u.id) &&
			role == Role.load(r.id)
		}.deleteAll()

		if (flush) { UserDataRole.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(UserData u, boolean flush = false) {
		if (u == null) return

		UserDataRole.where {
			userData == UserData.load(u.id)
		}.deleteAll()

		if (flush) { UserDataRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		UserDataRole.where {
			role == Role.load(r.id)
		}.deleteAll()

		if (flush) { UserDataRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, UserDataRole ur ->
			if (ur.userData == null) return
			boolean existing = false
			UserDataRole.withNewSession {
				existing = UserDataRole.exists(ur.userData.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['role', 'userData']
		version false
	}
}
