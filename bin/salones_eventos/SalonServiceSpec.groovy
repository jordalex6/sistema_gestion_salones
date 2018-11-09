package salones_eventos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SalonServiceSpec extends Specification {

    SalonService salonService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Salon(...).save(flush: true, failOnError: true)
        //new Salon(...).save(flush: true, failOnError: true)
        //Salon salon = new Salon(...).save(flush: true, failOnError: true)
        //new Salon(...).save(flush: true, failOnError: true)
        //new Salon(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //salon.id
    }

    void "test get"() {
        setupData()

        expect:
        salonService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Salon> salonList = salonService.list(max: 2, offset: 2)

        then:
        salonList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        salonService.count() == 5
    }

    void "test delete"() {
        Long salonId = setupData()

        expect:
        salonService.count() == 5

        when:
        salonService.delete(salonId)
        sessionFactory.currentSession.flush()

        then:
        salonService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Salon salon = new Salon()
        salonService.save(salon)

        then:
        salon.id != null
    }
}
