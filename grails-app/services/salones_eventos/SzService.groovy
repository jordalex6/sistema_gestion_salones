package salones_eventos

import grails.gorm.transactions.Transactional

@Transactional
class SzService {

    def serviceMethod() {

    }
    List reservas(Salon id){
      def reservas =  Reserva.findAllBySalon(id)
      return reservas
   
    }
    List reservas(Cliente id){
      def reservas =  Reserva.findAllByCliente(id)
      return reservas
   
    }

    void eliminarReserva(Long id) {
      def reserva = Reserva.get(id)
      reserva.delete(flush: true)
    }
}
