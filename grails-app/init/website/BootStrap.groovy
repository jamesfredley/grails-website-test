package website

class BootStrap {

    SampleService sampleService

    def init = { servletContext ->
        (0..100).each {
            sampleService.save(new Sample(prop1: "Sample ${it}", prop2: it, prop3: new Date()))
        }
    }
    def destroy = {
    }
}