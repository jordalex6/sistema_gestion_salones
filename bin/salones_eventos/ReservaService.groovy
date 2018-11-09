package salones_eventos

import grails.gorm.transactions.Transactional
import grails.gorm.services.Service

@Service(Reserva)
@Transactional
abstract class ReservaService implements IReservaService{

    def serviceMethod() {

    }
    List reservas(Salon id){
      def reservas =  Reserva.findAllBySalon(id)
      return reservas
   
    }
    List reservasClientes(Cliente id){
      def reservas =  Reserva.findAllByClienteAndCancelada(id,false)
      return reservas
   
    }
    List reservasClientesCanceladas(Cliente id){
      def reservas =  Reserva.findAllByClienteAndCancelada(id,true)
      return reservas
   
    }

    void cancelarReserva(Long id) {
      def reserva = Reserva.get(id)
      reserva.setCancelada(true)
      reserva.save(flush: true)
    }
}
