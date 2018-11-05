package salones_eventos

class Reserva {

    Cliente cliente
    Salon salon
    Date fecha_actual
    Date fecha_reserva
    BigDecimal precio
    boolean cancelada
     static belongsTo= [cliente: Cliente,salon:Salon]

    static constraints = {
        fecha_actual (blank:false)
        fecha_reserva(blank:false, validator: {val, Reserva obj ->
            if(val < new Date(System.currentTimeMillis())){
                return ['Error']
            }
        })
        precio(blank:false, validator: {val ->
            if(val < 0){
                return ['Error']
            }
        })
    }

}

