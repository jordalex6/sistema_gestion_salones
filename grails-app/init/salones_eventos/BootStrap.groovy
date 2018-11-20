package salones_eventos

class BootStrap {

    def init = { servletContext -> 

      // Roles 
        /* def clientRole = new Role(authority: "ROLE_CLIENT").save(flush:true)
        def propRole = new Role(authority: "ROLE_PROPIETARIO").save(flush:true)
        def adminRole = new Role(authority: "ROLE_ADMIN").save(flush:true)
 */
        // User Cliente y propietario
      /*   def clientUser = new User(username: 'jordan@gmail.com', 
                                password: 'password', 
                                cliente: new Cliente()
                                ).save(flush:true)
                                
        println("new user client -> " + clientUser)
        UserRole.create clientUser, clientRole

        Propietario propietario = new Propietario(cuit:"27355016669", razonSocial:"La Tanita SRL")

        clientUser.setPropietario(propietario)
        clientUser.save(flush:true)                      
        println("update user client -> " + clientUser)

        UserRole.create clientUser, propRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }
        // User Cliente
        def userTwo = new User(username: 'sante@gmail.com', 
                                password: 'password', 
                                cliente: new Cliente()
                                ).save(flush:true)
                                
        println("new user propietario-> " + userTwo)
        UserRole.create userTwo, clientRole */
       /*  Propietario propietario2 = new Propietario(cuit:"27355016668", razonSocial:"La Tanita SRL")

        userTwo.setPropietario(propietario2)
        userTwo.save(flush:true)                      
        println("update user client -> " + userTwo)

        UserRole.create userTwo, propRole */
      /*   UserRole.withSession {
            it.flush()
            it.clear()
        } */
        // User Cliente 
/*         def clienUser = new User(username: 'sante2@gmail.com', 
                                password: 'password', 
                                cliente: new Cliente()
                                ).save(flush:true)
                                
        println("new user cliente-> " + clienUser)
        UserRole.create clienUser, clientRole
        clienUser.save(flush:true)                      
        println("update user client -> " + clienUser)        
        UserRole.withSession {
            it.flush()
            it.clear()
        } */
        
        // User Admin
/*         def adminUser = new User(username: 'martin@gmail.com', password: 'password').save(flush:true)
        println("new user -> " + adminUser)
        UserRole.create adminUser, adminRole

        UserRole.withSession {
            it.flush()
            it.clear()
        } */
/* 
         def salon1 = new Salon(nombre:'Esmeralda', 
                                descripcion:'Un salon con amplios y variados espacios, se ofrecen servicios de calidad acorde a sus necesidades',
                                direccion:'Sumalao', 
                                telefono:'3834111111', 
                                capacidad:1000, 
                                precio:60000.0, 
                                tipoSalon:'vip',
                                propietario:clientUser.getPropietario())
        if(!salon1.save(flush:true)){
            salon1.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon2 = new Salon(nombre:'La Tanita',
                                descripcion:'La Tanita ofrece su amplio complejo para realizar todo tipo de fiestas',
                                direccion:'Valle Viejo - Tres puentes', 
                                telefono:'3834111111', 
                                capacidad:1000, 
                                precio:60000.0, 
                                tipoSalon:'vip',
                                propietario:clientUser.getPropietario())

        if(!salon2.save(flush:true)){
            salon2.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        // El resto del codigo 
        def salon3 = new Salon(nombre:'Zafiro',  descripcion:'La Tanita ofrece su amplio complejo para realizar todo tipo de fiestas',propietario:clientUser.getPropietario(), direccion:'La Carrera', telefono:'3834333333', capacidad:300, precio:1000.0, tipoSalon:'normal')
        if(!salon3.save(flush:true)){
            salon3.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon4 = new Salon(nombre:'Ruby',  descripcion:'La Tanita ofrece su amplio complejo para realizar todo tipo de fiestas',propietario:clientUser.getPropietario(), direccion:'Piedra Blanca', telefono:'3834444444', capacidad:200, precio:55000.0, tipoSalon:'normal')
        if(!salon4.save(flush:true)){
            salon4.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon5 = new Salon(nombre:'Diamante',  descripcion:'La Tanita ofrece su amplio complejo para realizar todo tipo de fiestas',propietario:propUser.getPropietario(), direccion:'San Isidro', telefono:'3834555555', capacidad:1000, precio:35500.0, tipoSalon:'normal')
        if(!salon5.save(flush:true)){
            salon5.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon6 = new Salon(nombre:'Carbon',  descripcion:'La Tanita ofrece su amplio complejo para realizar todo tipo de fiestas',propietario:propUser.getPropietario(), direccion:'Capital', telefono:'3834666666', capacidad:450, precio:42000.0, tipoSalon:'normal')
        if(!salon6.save(flush:true)){
            salon6.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon7 = new Salon(nombre:'Perla',  descripcion:'La Tanita ofrece su amplio complejo para realizar todo tipo de fiestas',propietario:propUser.getPropietario(), direccion:'Capital', telefono:'3834777777', capacidad:3000, precio:2358.0, tipoSalon:'normal')
        if(!salon7.save(flush:true)){
            salon7.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        } */
    }
    def destroy = {
    }
}
 