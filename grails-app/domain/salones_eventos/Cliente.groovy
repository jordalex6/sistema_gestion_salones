package salones_eventos

class Cliente {

    Float calificacion
    User usuario
   
    static hasMany = [reservas : Reserva]

    static constraints = {
        //usuario unique:true
        calificacion nullable:true, blank:true
    }
}
