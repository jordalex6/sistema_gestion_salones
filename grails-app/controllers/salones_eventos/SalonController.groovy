package salones_eventos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SalonController {

    SalonService salonService
    ServicioSalonService servicioSalonService 

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond salonService.list(params), model:[salonCount: salonService.count()]
    }
    //esto no funciona
    def listadoSalonesPorPropietario(Propietario propietario) {
      [listado: servicioSalonService.listadoSalonesPorPropietario(propietario)]
    }

    def show(Long id) {
        respond salonService.get(id)
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
            salonService.save(salon)
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
        respond salonService.get(id)
    }

    def update(Salon salon) {
        if (salon == null) {
            notFound()
            return
        }

        try {
            salonService.save(salon)
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

        salonService.delete(id)

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