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

## Grace VS Grails

### Jar File Size
| [Grace 2023.0.0-RC2](https://github.com/codeconsole/grace-website) | [Grace 2023.0.0-RC2 slim](https://github.com/codeconsole/grace-website/tree/slim) | [Grails 6.2.0](https://github.com/codeconsole/website) | [Grails 6.2.1-SNAPSHOT slim](https://github.com/codeconsole/website/tree/6.2.1-SNAPSHOT) |
| --------------- | --------------- | --------------- | --------------- |  
| `66M ./BOOT-INF/lib` | ` 66M ./BOOT-INF/lib` | `129M ./BOOT-INF/lib` | ` 69M ./BOOT-INF/lib` |
| `16M ./assets` | `9.6M ./assets` | ` 66M ./assets` | ` 35M ./assets` |
| `83M .` | ` 77M .` | `196M .` | `106M .` |
