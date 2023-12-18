Demonstrates the differences between 2 websites created with
```
mv website website-old
grails create-app website
cd website
mv ../website-old/.git .
mv ../website-old/README.md .
grails create-domain-class Sample
# add 3 properties to Sample.groovy     String prop1, Integer prop2, Date prop3
mv ../website-old/grails-app/domain/website/Sample.groovy grails-app/domain/website 
grails generate-controller website.Sample 
grails generate-views website.Sample 
grails install-templates 


git commit -a -m <version>
git tag <version>
git push origin --tags
```

https://github.com/codeconsole/website/compare/3.3.9..4.0.0.RC2
https://github.com/codeconsole/website/compare/5.0.0..5.0.3
https://github.com/codeconsole/website/compare/6.1.0..6.1.1