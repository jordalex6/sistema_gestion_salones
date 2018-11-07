package salones_eventos

import grails.gorm.transactions.Transactional
import grails.gorm.services.Service

@Service(Salon)
@Transactional
abstract class MiServiceSalonService implements SalonService{

    def serviceMethod() {

    }

    List listarSalonesPorUsuario(User usuario){
        def salones = Salon.findAllByUsuario(usuario)
        return salones
    }
}
 