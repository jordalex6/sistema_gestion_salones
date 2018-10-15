package salones_eventos

class Reserva {

    Integer id_cliente
    String nro_tarjeta
    String tarjeta
    String codigo_tarjeta
    java.sql.Date fecha
    java.sql.Time hora
    java.sql.Date fecha_inicio
    java.sql.Date fecha_fin
    BigDecimal monto

    static constraints = {
    }
}
