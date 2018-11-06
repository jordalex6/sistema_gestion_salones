package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
class UserController {
 
    UserService userService
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured('ROLE_ADMIN')
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }

    def show(Long id) {
        def User user = userService.get(id)
        println("ROLE = " + user.getAuthorities())
        println("USER = " + user)
        if(user.getAuthorities().any{it.authority =='"ROLE_ADMIN"'}){
            respond user, view:'show_admin' 
        }else if(user.getAuthorities().any{it.authority=='"ROLE_CLIENT"'}){
             respond user, view:'show' 
        }
    }
    @Secured('ROLE_CLIENT')
    def showAdmin(Long id)
    {

        respond userService.get(id)
    }
    @Secured('ROLE_ADMIN')
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

    def edit(Long id) {
        def auth = springSecurityService.authentication
        def authorities = auth.authorities // a Collection of GrantedAuthority

        if(authorities.any{it == 'ROLE_ADMIN'}){
            println("authorities = " + authorities)
            respond userService.get(id), view:'edit_admin'
        }else{
            println("authorities = " + authorities)
            respond userService.get(id), view:'edit'
        }
    }

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
