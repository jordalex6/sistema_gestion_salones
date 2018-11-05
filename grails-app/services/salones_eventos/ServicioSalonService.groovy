package salones_eventos

import grails.gorm.transactions.Transactional

@Transactional
class ServicioSalonService implements SalonService{

    List listadoSalonesPorPropietario(Propietario propietario) {
        def salones = Salon.findAllByPropietario(propietario)
        return salones
    }
}