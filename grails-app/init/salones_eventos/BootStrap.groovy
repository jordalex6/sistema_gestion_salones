package salones_eventos

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_CLIENT').save(flush:true)

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
