package salones_eventos

class Salon {    
    String nombre   
    String direccion
    //Float[] ubicación_geográfica
    String telefono
    String tipoSalon
    Integer capacidad
    Float precio
    Propietario propietario
    byte[] imagen

    static hasMany = [reserva: Reserva]
    static belongsTo = [propietario: Propietario]

    static constraints = {        
        nombre(blank: false)
        capacidad(blank: false, min: 0)
        direccion(blank: false)
        tipoSalon(blanl: false, inList:['normal','vip'])
        telefono(blank: false)
        precio(blank: false)
        imagen(nullable: true)
    }
}