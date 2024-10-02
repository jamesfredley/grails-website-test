package website

import grails.testing.gorm.DomainUnitTest
import spock.lang.Ignore
import spock.lang.Specification

class SampleSpec extends Specification implements DomainUnitTest<Sample> {

    @Ignore
     void "test domain constraints"() {
        when:
        Sample domain = new Sample()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
