package salones_eventos

class BootStrap {

    def init = { servletContext ->
        def propietario1 = new Propietario(nombre:'Santé Barbieri')
        if(!propietario1.save(flush:true)){
            propietario1.errors.allErrors.each{println it}
        }else{
            println("Propietario agregado a BD")
        }
        def propietario2 = new Propietario(nombre:'Martin Hidalgo')
        if(!propietario2.save(flush:true)){
            propietario2.errors.allErrors.each{println it}
        }else{
            println("Propietario agregado a BD")
        }
        def salon1 = new Salon(nombre:'Esmeralda', propietario:propietario2, direccion:'Sumalao', telefono:'3834111111', capacidad:1000, precio:60000.0, tipoSalon:'vip')
        if(!salon1.save(flush:true)){
            salon1.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon2 = new Salon(nombre:'Estrella', propietario:propietario2, direccion:'La tercena', telefono:'3834222222', capacidad:500, precio:10000.0, tipoSalon:'vip')
        if(!salon2.save(flush:true)){
            salon2.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon3 = new Salon(nombre:'Zafiro', propietario:propietario2, direccion:'La Carrera', telefono:'3834333333', capacidad:300, precio:1000.0, tipoSalon:'normal')
        if(!salon3.save(flush:true)){
            salon3.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon4 = new Salon(nombre:'Ruby', propietario:propietario1, direccion:'Piedra Blanca', telefono:'3834444444', capacidad:200, precio:55000.0, tipoSalon:'normal')
        if(!salon4.save(flush:true)){
            salon4.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon5 = new Salon(nombre:'Diamante', propietario:propietario1, direccion:'San Isidro', telefono:'3834555555', capacidad:1000, precio:35500.0, tipoSalon:'normal')
        if(!salon5.save(flush:true)){
            salon5.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon6 = new Salon(nombre:'Carbon', propietario:propietario1, direccion:'Capital', telefono:'3834666666', capacidad:450, precio:42000.0, tipoSalon:'normal')
        if(!salon6.save(flush:true)){
            salon6.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon7 = new Salon(nombre:'Perla', propietario:propietario1, direccion:'Capital', telefono:'3834777777', capacidad:3000, precio:2358.0, tipoSalon:'normal')
        if(!salon7.save(flush:true)){
            salon7.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        
        /*def adminRole = new Role(authority: 'ROLE_CLIENT').save(flush:true)

         def testUser = new User(username: 'jordan@gmail.com', password: 'password', cliente: new Cliente()).save(flush:true)
        println("new user -> " + testUser)
         UserRole.create testUser, adminRole

         UserRole.withSession {
            it.flush()
            it.clear()
         }

        /*  assert User.count() == 1
         assert Role.count() == 1
         assert UserRole.count() == 1 */
    }
    def destroy = {
    }
}
