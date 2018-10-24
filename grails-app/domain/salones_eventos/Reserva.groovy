package salones_eventos

class Reserva {

    Cliente Cliente
    Salon salon
    Date fecha_actual
    Date fecha_reserva
     
    float precio
    

    static constraints = {
        fecha_reserva(blank:false, validator: {val, Reserva obj ->
            if(val < fecha_actual){
                return ['Error']
            }
    }
     precio(blank:false, validator: {val, Reserva obj ->
            if(val < 0){
                return ['Error']
            }
    }

}

