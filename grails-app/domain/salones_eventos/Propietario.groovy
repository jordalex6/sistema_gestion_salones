package salones_eventos

class Propietario {
    String nombre

    static constraints = {
        nombre(blanck: false)
    }
}