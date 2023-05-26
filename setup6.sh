mv website website-old
grails create-app website
cd website
mv ../website-old/.git .
git checkout README.md
grails create-domain-class Sample
# add 3 properties to Sample.groovy     String prop1, Integer prop2, Date prop3
git checkout grails-app/domain/website/Sample.groovy
# grails generate-controller website.Sample 
git checkout grails-app/services/website/SampleService.groovy
git checkout src/integration-test/groovy/website/SampleServiceSpec.groovy
git checkout grails-app/controllers/website/SampleController.groovy
git checkout src/test/groovy/website/SampleControllerSpec.groovy
# grails generate-views website.Sample 
git checkout grails-app/views/sample
# grails install-templates
git checkout setup.sh
git checkout setup6.sh
