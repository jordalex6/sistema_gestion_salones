package salones_eventos

class Propietario {
    
    // User usuario
    String cuit
    String razonSocial
    CuentaBancaria cuentaBancaria 

    static hasMany = [salones : Salon]
    static belongsTo = [usuario: User]

    static constraints = {
        //usuario unique:true
        cuit nullable:false, blank: false, matches:"[0-9]{11}"
        razonSocial nullable:false, blank: false
        cuentaBancaria nullable: true
    }
} 