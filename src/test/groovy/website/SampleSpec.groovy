package website

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class SampleSpec extends Specification implements DomainUnitTest<Sample> {

     void "test domain constraints"() {
        when:
        Sample domain = new Sample()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
