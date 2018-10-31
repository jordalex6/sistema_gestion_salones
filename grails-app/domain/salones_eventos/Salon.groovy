package salones_eventos

class Salon {
    //int idSalon la base ya me crea un id sola
    String nombre   
    Propietario propietario
    String dirección
    //Float[] ubicación_geográfica  
    String telefono
    /*Fiestas conmemorativas, Eventos negocios, Eventos Artísticos, etc */
    String tipoSalon     
    int capacidadSalon
    float precio

    static hasMany = [reserva: Reserva]

    static constraints = {
        propietario(blnak: false)
        nombre(blank: false)
        capacidadSalon(blank: false)
        dirección(blank: false)
        tipoSalon(blanl: false)
    }
}