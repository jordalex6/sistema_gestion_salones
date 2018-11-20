package salones_eventos

import grails.gorm.transactions.Transactional
import grails.gorm.services.Service

@Service(Salon)
@Transactional
abstract class MiSalonService implements SalonService{

    def serviceMethod() {

    }

    Salon get(Serializable id){
        println("MiSalonService: get id -> " + id)
        return Salon.find("from Salon as s where s.id=:vid",[vid:id])
    }
    List<Salon> listarSalonesPorPropietario(Propietario propietario){
        return Salon.findAllByPropietario(propietario)
    }
}
 