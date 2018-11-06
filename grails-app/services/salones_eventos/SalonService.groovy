package salones_eventos

import grails.gorm.services.Service

@Service(Salon)
interface SalonService {

    Salon get(Serializable id)

    List<Salon> list(Map args)

    Long count()

    void delete(Serializable id)

    Salon save(Salon salon)

    List listadoSalonesPorPropietario(Propietario prop)

}