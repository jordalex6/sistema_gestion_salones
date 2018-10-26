package salones_eventos

import grails.plugin.springsecurity.SpringSecurityService
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1
    SpringSecurityService springSecurityService

    String username
    String password
    String email 
    String firstName 
    String lastName
    String phone
    Date birthday

    /* Propietario propietario
    Cliente cliente
 */
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static hasOne = [cliente : Cliente, propietario: Propietario]

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        email nullable: true, blank: true
        firstName nullable: true, blank: true
        lastName nullable: true, blank: true
        phone nullable: true, blank: true
        birthday nullable: true, blank: true
        cliente nullable: true, unique:true
        propietario nullable: true, unique:true
    }

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
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

	static transients = ['springSecurityService']

    static mapping = {
        table '`user`'
	    password column: '`password`'
    }
}
