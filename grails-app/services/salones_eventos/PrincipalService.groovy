package salones_eventos

import grails.gorm.transactions.Transactional
import grails.gorm.services.Service

@Service(Salon)
@Transactional
abstract class PrincipalService{

    def serviceMethod() {

    }
    List<Salon> salonesPorCapacidad(int select){
       switch(select){
           case 2:
                List<Salon> salones =  Salones.findAllByPrecioBetween(0 , 1000)
                break
           case 3:
                List<Salon> salones =  Salones.findAllByPrecioBetween(1000 , 5000)
                break
           case 4:
                List<Salon> salones =  Salones.findAllByPrecioBetween(5000 , 10000) 
                break
           case 5:
                List<Salon> salones =  Salones.findAllByPrecioBetween(10000 , 15000)
                break 
       }     
      return salones 
    }
  /*   List SalonessClientes(Cliente id){
      List<Salon> salones =  Salones.findAllByClienteAndCancelada(id,false)
      return salones
   
    }
    List SalonessClientesCanceladas(Cliente id){
      List<Salon> salones =  Salones.findAllByClienteAndCancelada(id,true)
      return salones
   
    }

    void cancelarSalones(Long id) {
      Salon salon = Salon.get(id)
      salon.setCancelada(true)
      salon.save(flush: true)
    } */
}