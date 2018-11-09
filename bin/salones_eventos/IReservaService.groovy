package salones_eventos

interface IReservaService {

    Reserva get(Serializable id)

    List<Reserva> list(Map args)

    Long count()

    void delete(Serializable id)

    Reserva save(Reserva reserva)

}