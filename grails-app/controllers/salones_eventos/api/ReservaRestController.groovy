package salones_eventos

import grails.rest.RestfulController
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class ReservaRestController extends RestfulController<Reserva>{
    static responseFormats = ['json','xml']

    ReservaRestController(){
        super(Reserva)
    }

    def reservasPorSalon(){
        Salon salon = Salon.findById(params.salon)
        println("ReservaPorSalon -> salon: " + params.salon)
        if(salon != null){
            //respond Salon.findAll("from Salon as s where s.tipoSalon = :vtype ",[vtype:params.tipoSalon])
            respond Reserva.findAllBySalon(salon)
        }else{
            respond ([])
        }
    }

    def reservasPorFecha(){
        println("reservasPorFecha: params -> " + params)
        Date fechReserva = new Date(params.year+"/"+params.month+"/"+params.day)
        println("reservasPorFecha: fecha -> " + fechReserva)
        if(fechReserva != null){
            respond Reserva.findAllByFechaReserva(fechReserva)
        }else{
            respond ([])
        }
    }
}