package salones_eventos

import grails.gorm.transactions.Transactional

@Transactional
class SzService {

    def serviceMethod() {

    }
    List reservas(Salon id){
      def productos =  Reserva.findAllBySalon(id)
      return productos
   
    }
}
