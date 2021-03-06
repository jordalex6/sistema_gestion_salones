package salones_eventos

import grails.plugin.springsecurity.SpringSecurityService
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic
import groovy.time.TimeCategory
import groovy.time.TimeDuration


@EqualsAndHashCode(includes='username')
@ToString(includeNames=true, includePackage=false)
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
    Cliente cliente */
 
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
        birthday nullable: true, blank: true, validator:{
            println("birthday = " + it)
            if(it != null){
                if(new Date(System.currentTimeMillis()) < it) {
                    return ['fechaIncorrecta']
                }
                TimeDuration tiempo = TimeCategory.minus(new Date(System.currentTimeMillis()),(Date)it) 
                if(tiempo.years < 18){
                    return ['menorEdad']
                }
            }
        }
        cliente nullable: true, blank: true
        propietario nullable: true, blank: true
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
