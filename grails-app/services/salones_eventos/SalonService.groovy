package salones_eventos

interface SalonService {

    Salon get(Serializable id)

    List<Salon> list(Map args)

    Long count()

    void delete(Serializable id)

    Salon save(Salon salon)

    List listarSalonesPorUsuario(User usuario)
}