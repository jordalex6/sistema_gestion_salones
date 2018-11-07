package salones_eventos

import grails.gorm.transactions.Transactional
import grails.gorm.services.Service

@Service(Salon)
@Transactional
abstract class MiSalonService implements SalonService{

    def serviceMethod() {

    }

    List<Salon> listarSalonesPorPropietario(Propietario propietario){
        return Salon.findAllByPropietario(propietario)
    }
}
 