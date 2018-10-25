package salones_eventos

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_CLIENT').save(flush:true)

         def testUser = new User(username: 'jordan', password: 'password').save(flush:true)

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
