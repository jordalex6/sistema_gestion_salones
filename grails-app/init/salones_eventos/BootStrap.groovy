package salones_eventos

class BootStrap {

    def init = { servletContext ->

        /* Roles */
        def clientRole = new Role(authority: "ROLE_CLIENT").save(flush:true)
        def propRole = new Role(authority: "ROLE_PROPIETARIO").save(flush:true)
        def adminRole = new Role(authority: "ROLE_ADMIN").save(flush:true)

        /* User Cliente */
        def clientUser = new User(username: 'jordan@gmail.com', 
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
        /* User Propietario */
        def propUser = new User(username: 'sante@gmail.com', 
                                password: 'password', 
                                cliente: new Cliente()
                                ).save(flush:true)
                                
        println("new user propietario-> " + propUser)
        UserRole.create propUser, clientRole
        UserRole.withSession {
            it.flush()
            it.clear()
         }

        
        /* User Admin */
        def adminUser = new User(username: 'martin@gmail.com', password: 'password').save(flush:true)
        println("new user -> " + adminUser)
         UserRole.create adminUser, adminRole

         UserRole.withSession {
            it.flush()
            it.clear()
         }

         def salon1 = new Salon(nombre:'Esmeralda',
                                direccion:'Sumalao', 
                                telefono:'3834111111', 
                                capacidad:1000, 
                                precio:60000.0, 
                                tipoSalon:'vip',
                                propietario:
                                clientUser.getPropietario())

        if(!salon1.save(flush:true)){
            salon1.errors.allErrors.each{println it}
        }else{
            println("Salon agregado a BD")
        }
        def salon2 = new Salon(nombre:'La Tanita',
                                direccion:'Sumalao', 
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

        /* El resto del codigo abajo*/
    }
    def destroy = {
    }
}
 