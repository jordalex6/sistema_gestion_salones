package salones_eventos

class CuentaBancaria {

    String banco
    String numeroCuenta
    String cbu
    String nombreTitular
    String dniTitular

    static belongsTo = [propietario: Propietario]
    
    static constraints = {
    }
}
