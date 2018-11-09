package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class UserController {
 
    UserService userService
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured('ROLE_ADMIN')
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }
    @Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
    def show() {
        User user = springSecurityService.isLoggedIn() ?
            springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
            null

        if(user != null){
            def authorities =springSecurityService.authentication.authorities // a Collection of GrantedAuthority (Roles)
            if(authorities.any{it.authority == 'ROLE_ADMIN'}){
                println("show authorities = " + authorities)
                respond user, view:'show_admin'
            }else{
                println("show authorities = " + authorities)
                respond user, view:'show'
            }
        }
        
    }

    def create() {
        respond new User(params)
    }

    def save(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }
    @Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
    def edit() {

         User user = springSecurityService.isLoggedIn() ?
            springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
            null

        if(user != null){
            def authorities =springSecurityService.authentication.authorities // a Collection of GrantedAuthority (Roles)

            if(authorities.any{it.authority == 'ROLE_ADMIN'}){
                println("edit authorities = " + authorities)
                respond user, view:'edit_admin'
            }else{
                println("edit authorities = " + authorities)
                respond user, view:'edit'
            }
        }
    }
    @Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            println("update user -> " + user)
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    @Secured('ROLE_ADMIN')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
