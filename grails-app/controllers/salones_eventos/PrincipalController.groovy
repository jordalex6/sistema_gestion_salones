package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class PrincipalController {

    /* SalonService salonService */
    def miSalonService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond miSalonService.list(params), model:[salonCount: miSalonService.count()], view:"/salones_index"
    }
    
    def index2() {
        User user = springSecurityService.isLoggedIn() ?
            springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
            null
	    if(user!=null){
    	    respond miSalonService.listarSalonesPorPropietario(user.getPropietario()), model:[salonCount: miSalonService.count()]
	    }else{
		    println("Falla al obtener el usuario")
	    }
    }

    def verImagen = {
        def salon = Salon.get(params.id)      
        response.outputStream << salon.imagen
        response.outputStream.flush()      
    }

    def show(Long id) {
        Salon salon = miSalonService.get(id)
        def precioReserva = salon.getPrecio() * 20 / 100
        println("Precio Reserva -> " + precioReserva)
        respond salon, model:[reserva:precioReserva], view:"/salon_detail"
    }

}