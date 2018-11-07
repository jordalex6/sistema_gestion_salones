package salones_eventos

class Salon {    
    String nombre   
    String direccion
    String telefono
    String tipoSalon
    Integer capacidad
    Float precio
    User usuario
    //Propietario propietario
    byte[] imagen

    static hasMany = [reserva: Reserva]
    //static belongsTo = [propietario: Propietario]
    static belongsTo = [usuario: User]

    static constraints = {        
        nombre(blank: false)
        capacidad(blank: false, min: 0)
        direccion(blank: false)
        tipoSalon(blanl: false, inList:['normal','vip'])
        telefono(blank: false, matches:"[1-9]{3}-[1,-9]{6}")
        precio(blank: false)
        imagen(nullable: true)
        //propietario(nullable: false)
        usuario(blank: false)
    }
}