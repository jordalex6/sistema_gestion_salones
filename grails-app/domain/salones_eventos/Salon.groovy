package salones_eventos
import grails.rest.Resource

import groovy.transform.ToString

/* @Resource(uri='/salones') */
@ToString(includeNames=true, includePackage=false)
class Salon {    
    String nombre
    String descripcion   
    String direccion
    String telefono
    String tipoSalon
    Integer capacidad
    Float precio
    byte[] imagen

    static hasMany = [reserva: Reserva]
    static belongsTo = [propietario: Propietario]

    static constraints = {        
        nombre(blank: false)
        descripcion(blank: false)
        capacidad(blank: false, min: 0)
        direccion(blank: false)
        tipoSalon(blanl: false, inList:['normal','vip'])
        telefono(blank: false, matches:"[0-9]{10}")
        precio(blank: false)        
        imagen(nullable: true)
        propietario(nullable: true)
    }

    static mapping = {
        imagen column: 'featured_image_bytes', sqlType: 'bytea' 
    }
}