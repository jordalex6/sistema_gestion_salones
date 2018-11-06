package salones_eventos

class BootStrap {

    def init = { servletContext ->
        
        // def propietarioRole1 = new Role(authority: 'ROLE_PROPIETARIO').save(flush:true)
        // def usuario1 = new User(username: 'jordan@gmail.com', password: 'password', cliente: new Cliente()).save(flush:true)
        // println("new user -> " + usuario1)
        // UserRole.create usuario1, propietarioRole1
        // UserRole.withSession {
        //     it.flush()
        //     it.clear()
        // }

        // def propietarioRole2 = new Role(authority: 'ROLE_PROPIETARIO').save(flush:true)
        // def usuario2 = new User(username: 'santebarbieri@gmail.com', password: 'password', cliente: new Cliente()).save(flush:true)
        // println("new user -> " + usuario2)
        // UserRole.create usuario2, propietarioRole2
        // UserRole.withSession {
        //     it.flush()
        //     it.clear()
        // }
        // // def usuario1 = new User(username:'santebarbieri', password:'123456', email:'santebarbieri@gmail.com', firstName:'Sante', lastName:'Barbieri', phone:'3834111111')
        // // if(!usuario1.save(flush:true)){
        // //     usuario1.errors.allErrors.each{println it}
        // // }else{
        // //     println("new user -> " + usuario1)
        // // }

        // // def usuario2 = new User(username:'martinhidalgo', password:'123456', email:'martinhidalgo@gmail.com', firstName:'Martin', lastName:'Hidalgo', phone:'3834222222')
        // // if(!usuario2.save(flush:true)){
        // //     usuario2.errors.allErrors.each{println it}
        // // }else{
        // //     println("new user -> " + usuario2)
        // // }

        // def salon1 = new Salon(nombre:'Esmeralda', /*usuario: usuario2*/, direccion:'Sumalao', telefono:'3834111111', capacidad:1000, precio:60000.0, tipoSalon:'vip')
        // if(!salon1.save(flush:true)){
        //     salon1.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
        // def salon2 = new Salon(nombre:'Estrella', /*usuario: usuario2*/, direccion:'La tercena', telefono:'3834222222', capacidad:500, precio:10000.0, tipoSalon:'vip')
        // if(!salon2.save(flush:true)){
        //     salon2.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
        // def salon3 = new Salon(nombre:'Zafiro', /*usuario: usuario2*/, direccion:'La Carrera', telefono:'3834333333', capacidad:300, precio:1000.0, tipoSalon:'normal')
        // if(!salon3.save(flush:true)){
        //     salon3.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
        // def salon4 = new Salon(nombre:'Ruby', /*usuario:usuario1*/, direccion:'Piedra Blanca', telefono:'3834444444', capacidad:200, precio:55000.0, tipoSalon:'normal')
        // if(!salon4.save(flush:true)){
        //     salon4.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
        // def salon5 = new Salon(nombre:'Diamante', /*usuario:usuario1*/, direccion:'San Isidro', telefono:'3834555555', capacidad:1000, precio:35500.0, tipoSalon:'normal')
        // if(!salon5.save(flush:true)){
        //     salon5.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
        // def salon6 = new Salon(nombre:'Carbon', /*usuario:usuario1*/, direccion:'Capital', telefono:'3834666666', capacidad:450, precio:42000.0, tipoSalon:'normal')
        // if(!salon6.save(flush:true)){
        //     salon6.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
        // def salon7 = new Salon(nombre:'Perla', /*usuario:usuario1*/, direccion:'Capital', telefono:'3834777777', capacidad:3000, precio:2358.0, tipoSalon:'normal')
        // if(!salon7.save(flush:true)){
        //     salon7.errors.allErrors.each{println it}
        // }else{
        //     println("Salon agregado a BD")
        // }
    }
    def destroy = {
    }
}
