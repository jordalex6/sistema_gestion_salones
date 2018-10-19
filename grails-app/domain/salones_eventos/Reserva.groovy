package salones_eventos

class Reserva {

    Integer id_cliente
    String nro_tarjeta
    String tarjeta
    String codigo_tarjeta
    java.sql.Date fecha_actual
    Date fecha
    String horario_alquiler 
    java.sql.Time hora
   
    BigDecimal montoint
    BigDecimal numero_Salon
    String tipo_Salon
    int cantidad_Personas
    String descripcion_Salon
    BigDecimal precio

    static constraints = {
    }
}

