package salones_eventos

class Salon {    
    String nombre   
    Propietario propietario
    String dirección
    //Float[] ubicación_geográfica
    String telefono
    String tipoSalon /*para fiestas, para negocios*/
    int capacidad
    float precio

    static hasMany = [reserva: Reserva]
    static belongsTo = [propietario: Propietario]

    static constraints = {        
        nombre(blank: false)
        capacidad(blank: false, min: 0)
        dirección(blank: false)
        tipoSalon(blanl: false)
        telefono(blank: false)
        precio(blank: false, min: 0)
    }
}