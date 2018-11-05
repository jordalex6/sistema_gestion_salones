<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainSalon" />
    </head>
    <body>
        <div id="show-salon" class="content scaffold-show" role="main">
            <h1>Datos del Salon</h1>
            <f:display bean="salon"/> <!--está linea me muestra los datos del salon, vaya a saber dios como funciona-->
            <g:form resource="${this.salon}" method="DELETE">
                <fieldset class="buttons">
                    <g:link action="edit" resource="${this.salon}">Editar</g:link>
                    <input type="submit" value="${message(code: 'Eliminar')}" onclick="return confirm('${message(code: 'Está Seguro?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>

<%-- <!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainSalon" />
        <g:set var="entityName" value="${message(code: 'salon.label', default: 'Salon')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-salon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-salon" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="salon" />
            <g:form resource="${this.salon}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.salon}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html> --%>
