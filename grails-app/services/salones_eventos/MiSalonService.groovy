package salones_eventos

import grails.gorm.transactions.Transactional
import grails.gorm.services.Service

@Service(Salon)
@Transactional
abstract class MiSalonService implements SalonService{

    def serviceMethod() {

    }

    List listarSalonesPorUsuario(User usuario){
        def salones = Salon.findAllByUsuario(usuario)
        return salones
    }
}
 