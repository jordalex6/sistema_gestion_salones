package salones_eventos

import grails.rest.RestfulController
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class SalonRestController extends RestfulController<Salon>{
    static responseFormats = ['json','xml']

    SalonRestController(){
        super(Salon)
    }

    def salonesPorTipo(){
        println("tipo salon -> " + params)
        if(params.tipoSalon != null){
            respond Salon.findAllBy("from Salon as s where s.tipoSalon = :vtype ",[vtype:params.tipoSalon])
            //respond Salon.findAllByTipoSalon(params.tipoSalon)
        }else{
            respond ([])
        }
    }
}