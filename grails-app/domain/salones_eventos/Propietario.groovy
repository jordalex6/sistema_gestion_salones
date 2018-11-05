package salones_eventos

class Propietario {
    String nombre

    User usuario
    String dni
    CuentaBancaria cuentaBancaria

    static hasMany = [salones : Salon]

    static constraints = {
        //usuario unique:true
        dni nullable:true, blank: true, matches:"[0-9]{8}"
        cuentaBancaria nullable: true
    }
}
