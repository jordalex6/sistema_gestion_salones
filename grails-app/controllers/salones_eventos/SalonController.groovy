package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CLIENT','ROLE_PROPIETARIO'])
class SalonController {

    SalonService salonService
    MiSalonService miSalonService
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond miSalonService.list(params), model:[salonCount: miSalonService.count()]
    }

    // def index() {
    //     User user = springSecurityService.isLoggedIn() ?
    //         springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
    //         null
	//     if(user!=null){
    // 	    respond miSalonService.listarSalonesPorUsuario(user), model:[salonCount: miSalonService.count()]
	//     }else{
	// 	    println("Falla al obtener el usuario")
	//     }
    //     //respond miSalonService.listarSalonesPorUsuario(usuario), model:[salonCount: miSalonService.count()]
    // }

    def show(Long id) {
        respond miSalonService.get(id)
    }

    def create() {
        respond new Salon(params)
    }

    def save(Salon salon) {
        if (salon == null) {
            notFound()
            return
        }

        try {
            //salon.imagen = params.imagen
            miSalonService.save(salon)
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
        //esto sirve para verificar el usuario cada vez que se cargue la pagina
        // User user = springSecurityService.isLoggedIn() ?
        //     springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
        //     null

        // if(user != null){
        //     def authorities =springSecurityService.authentication.authorities // a Collection of GrantedAuthority (Roles)

        //     if(authorities.any{it == 'ROLE_ADMIN'}){
        //         println("edit authorities = " + authorities)
        //         respond user, view:'edit_admin'
        //     }else{
        //         println("edit authorities = " + authorities)
        //         respond user, view:'edit'
        //     }
        // }
        respond miSalonService.get(id)
    }

    def update(Salon salon) {
        if (salon == null) {
            notFound()
            return
        }

        try {
            miSalonService.save(salon)
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

        miSalonService.delete(id)

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
