package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
class PropietarioController {

    UserService userService
    PropietarioService propietarioService

    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured('ROLE_ADMIN')
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond propietarioService.list(params), model:[propietarioCount: propietarioService.count()]
    }

    @Secured('ROLE_PROPIETARIO')
    def show(Long id) {
        respond propietarioService.get(id)
    }

    @Secured('ROLE_CLIENT')
    def create() {
        respond new Propietario(params)
    }
    @Secured('ROLE_CLIENT')
    def save(Propietario propietario) {
        if (propietario == null) {
            notFound()
            return
        }

        User user = springSecurityService.isLoggedIn() ?
            springSecurityService.currentUser : // Para obtener Object user logueado
            null

        if(user != null){
            // Se agrega propietario a objeto User y se agrega a la tabla 'propietario' la informacion adicional
            // de forma implicita
            user.setPropietario(propietario)

            if(!userService.save(user)){
                user.errors.allErrors.each{println it}
            }else{
                println("Se agrego informacion propietario a obj User. Role -> " + Role.findById(2) )
                //se agrega role PROPIETARIO a User actual
                UserRole.create user, Role.findById(2)
                UserRole.withSession {
                    it.flush()
                    it.clear()
                }

                if (springSecurityService.principal.username == user.username) {
                    springSecurityService.reauthenticate user.username
                }

                request.withFormat {
                    form multipartForm {
                        flash.message = message(code: 'default.created.message', args: [message(code: 'propietario.label', default: 'Propietario'), propietario.id])
                        redirect(controller: 'salon', action: 'create')
                    }
                    '*' { respond propietario, [status: CREATED] }
                }

                /* redirect(controller: 'salon', action: 'create') */
            }
        }else{
            
            redirect(controller: "login", action: "index")
            return false
        }

    }
    @Secured('ROLE_PROPIETARIO')
    def edit(Long id) {
        respond propietarioService.get(id)
    }
    @Secured('ROLE_PROPIETARIO')
    def update(Propietario propietario) {
        if (propietario == null) {
            notFound()
            return
        }

        try {
            propietarioService.save(propietario)
        } catch (ValidationException e) {
            respond propietario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'propietario.label', default: 'Propietario'), propietario.id])
                redirect propietario
            }
            '*'{ respond propietario, [status: OK] }
        }
    }
    @Secured('ROLE_ADMIN')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        propietarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'propietario.label', default: 'Propietario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
