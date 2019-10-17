Demonstrates the differences between 2 websites created with
```
grails create-app website
cd website
grails create-domain-class Sample
# add 3 properties to Sample.groovy     String prop1, Integer prop2, Date prop3
grails generate-controller website.Sample 
grails generate-views website.Sample 
grails install-templates 

git tag <version>
git push origin --tags
```

https://github.com/codeconsole/website/compare/3.3.9..4.0.0.RC2
