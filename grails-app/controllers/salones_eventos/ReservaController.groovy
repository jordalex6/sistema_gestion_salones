package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CLIENT'])
class ReservaController {

    def springSecurityService

    ReservaService reservaService

    def miSalonService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   /* Reservas para un derminado salon */
    def mostrarReservasSalon(Salon id) {
      response reservaService.reservas(id), view:"mostrarReservasSalon" 
    }
    /* Crear Reserva */
    def reservarSalon() {
        Salon salon = miSalonService.get(params.id)
        println("Salon a reservar -> " + salon)
        User user = springSecurityService.isLoggedIn() ?
            springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
            null
	    
        if(user!=null){
            def reserva = new Reserva(params)
            reserva.salon = salon 
            reserva.cliente=user.getCliente()
            reserva.precio = new BigDecimal(salon.precio*20/100)
            reserva.cancelada=false

            println("Objecto reserva parcial -> " + reserva)
           /*  java.util.Date fechaActual = new java.util.Date();
            reserva.fecha_actual= fechaActual */
            respond reserva, view:'reservarSalon'      
	    }else{
            /* mandar a login  */
        }
        
    }
    /* Reservas realizadas por un determinado cliente */
    def mostrarReservaCliente() {
        User user = springSecurityService.isLoggedIn() ?
        springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
        null

        if(user!=null){
           respond reservaService.reservasClientes(user.getCliente()), view:"mostrarReservasClientes" 
        }
    }

        /* Reservas canceladas por un determinado cliente */
    def mostrarReservaClienteCanceladas() {
        User user = springSecurityService.isLoggedIn() ?
        springSecurityService.loadCurrentUser() : // Para obtener Object user logueado
        null

        if(user!=null){
           respond reservaService.reservasClientesCanceladas(user.getCliente()), view:"mostrarReservasClientesCanceladas" 
        }
    }

    def cancelarReserva(Long id) {
      reservaService.cancelarReserva(id)
      redirect(action:"mostrarReservaCliente")
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond reservaService.list(params), model:[reservaCount: reservaService.count()]
    }

    def show(Long id) {
        respond reservaService.get(id)
    }

    def create() {
        respond new Reserva(params)
    }

    def save(Reserva reserva) {
        if (reserva == null) {
            notFound()
            return
        }

        try {
            reservaService.save(reserva)
        } catch (ValidationException e) {
            respond reserva.errors, view:'reservarSalon'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reserva.label', default: 'Reserva'), reserva.id])
                redirect action:"mostrarReservaCliente"
            }
            '*' { respond reserva, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond reservaService.get(id)
    }

    def update(Reserva reserva) {
        if (reserva == null) {
            notFound()
            return
        }

        try {
            reservaService.save(reserva)
        } catch (ValidationException e) {
            respond reserva.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'reserva.label', default: 'Reserva'), reserva.id])
                redirect reserva
            }
            '*'{ respond reserva, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        reservaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
