package salones_eventos

import groovy.transform.ToString
import grails.rest.Resource

/* @Resource(uri='/reservas') */
@ToString(includeNames=true, includePackage=false)
class Reserva {

   /*  Date fecha_actual */
    Date dateCreated
    Date lastUpdated
    Date fechaReserva
    Integer cant_personas
    BigDecimal precio
    boolean cancelada
    static belongsTo= [cliente: Cliente,salon:Salon]

    static constraints = {
       /*  fecha_actual (blank:false) */
        fechaReserva(blank:false, validator: {val, Reserva obj ->
            if(val < new Date(System.currentTimeMillis())){
                return ['Error']
            }
        })
        precio(blank:false, validator: {val ->
            if(val < 0){
                return ['Error']
            }
        })
        fechaReserva(unique:"salon")
        cant_personas blank:false, nullable:false
    }
}
