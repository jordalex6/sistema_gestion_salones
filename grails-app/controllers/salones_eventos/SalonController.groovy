package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
class SalonController {

    SalonService salonService
    MiServiceSalonService miServiceSalonService

    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond miServiceSalonService.list(params), model:[salonCount: miServiceSalonService.count()]
    }

    // def index(User usuario) {        
    //     respond miServiceSalonService.listarSalonesPorUsuario(usuario), model:[salonCount: miServiceSalonService.count()]
    // }

    def show(Long id) {
        
        respond miServiceSalonService.get(id)
    }

    def create() {

         User user = springSecurityService.isLoggedIn() ?
            springSecurityService.currentUser : // Para obtener Object user logueado
            null
        if(user != null){
            List<String> userRoles = springSecurityService.authentication.authorities // a Collection of GrantedAuthority (Roles)
            println("is authorities PROPIETARIO -> " + userRoles.any{it.authority == 'ROLE_PROPIETARIO'})
            if(userRoles.any{it.authority == 'ROLE_PROPIETARIO'}){
                println("create salon userRoles = " + userRoles)
                respond new Salon(params)
            }else{
                println("create Propietario userRoles = " + userRoles)
                redirect(controller: 'propietario', action: 'create')
            }
        }
       
    }

    def save(Salon salon) {
        if (salon == null) {
            notFound()
            return
        }

        try {
            User user = springSecurityService.isLoggedIn() ?
                springSecurityService.currentUser : // Para obtener Object user logueado
                null
             if(user != null){
                salon.setPropietario(user.getPropietario())
                miServiceSalonService.save(salon)
             }

        } catch (ValidationException e) {
            respond salon.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'salon.label', default: 'Salon'), salon.id])
                redirect salon
            }
            '*' { respond salon, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond miServiceSalonService.get(id)
    }

    def update(Salon salon) {
        if (salon == null) {
            notFound()
            return
        }

        try {
            miServiceSalonService.save(salon)
        } catch (ValidationException e) {
            respond salon.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'salon.label', default: 'Salon'), salon.id])
                redirect salon
            }
            '*'{ respond salon, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        miServiceSalonService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'salon.label', default: 'Salon'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'salon.label', default: 'Salon'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
