<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to conten$        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>$                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:lin$            </ul>
        </div>
        <div id="show-product" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="product" />
            <g:form resource="${this.product}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.product}"><g:message code="default.button.edit.label$                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Dele$                </fieldset>
            </g:form>
        </div>
    </body>
</html>
