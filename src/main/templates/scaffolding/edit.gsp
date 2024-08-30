<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <a href="#edit-${propertyName}" class="visually-hidden-focusable" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <ul class="navbar-nav container-fluid">
                        <li class="nav-item"><a class="nav-link btn" aria-label="Home" href="\${createLink(uri: '/')}">
                            <i class="bi-house"></i> <g:message code="default.home.label"/></a>
                        </li>
                        <li class="nav-item"><g:link class="nav-link btn" aria-label="List" action="index">
                            <i class="bi-database"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
                        </li>
                        <li class="nav-item me-lg-auto">
                            <g:link class="nav-link btn" aria-label="List" action="create"><i class="bi-database-add"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
                        </li>
                    </ul>
                </nav>
            </section>
            <section class="row">
                <div id="edit-${propertyName}" class="col-12 content scaffold-edit" role="main">
                    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
                    <g:if test="\${flash.message}">
                    <div class="message" role="status">\${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="\${this.${propertyName}}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="\${this.${propertyName}}" var="error">
                        <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                        </g:eachError>
                    </ul>
                    </g:hasErrors>
                    <g:form resource="\${this.${propertyName}}" method="PUT">
                        <g:hiddenField name="version" value="\${this.${propertyName}?.version}" />
                        <fieldset class="form">
                            <f:all bean="${propertyName}"/>
                        </fieldset>
                        <fieldset class="bg-body-tertiary">
                            <button class="btn btn-outline-primary" type="submit">
                                <i class="bi-floppy"></i> \${message(code: 'default.button.update.label', default: 'Update')}
                            </button>
                        </fieldset>
                    </g:form>
                </div>
            </section>
        </div>
    </div>
    </body>
</html>
