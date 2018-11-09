<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="user_account"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <g:form resource="${this.salon}" method="DELETE">
            <a href="#show-salon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <h1>Datos del salon</h1>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Nombre:</label>
                <div class="col-sm-7">
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="${this.salon.nombre}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticName" class="col-sm-4 col-form-label">Dirección:</label>
                <div class="col-sm-7">
                    <input type="text" readonly class="form-control-plaintext" id="staticName" value="${this.salon.direccion}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticLastName" class="col-sm-4 col-form-label">Telefono:</label>
                <div class="col-sm-7">
                    <input type="text" readonly class="form-control-plaintext" id="staticLastName" value="${this.salon.telefono}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticBirthday" class="col-sm-4 col-form-label">Tipo de Salón:</label>
                <div class="col-sm-7">
                    <input type="text" readonly class="form-control-plaintext" id="staticBirthday" value="${this.salon.tipoSalon}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticPhome" class="col-sm-4 col-form-label">Capacidad:</label>
                <div class="col-sm-7">
                    <input type="text" readonly class="form-control-plaintext" id="staticPhome" value="${this.salon.capacidad}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticPhome" class="col-sm-4 col-form-label">Precio:</label>
                <div class="col-sm-7">
                    <input type="text" readonly class="form-control-plaintext" id="staticPhome" value="${this.salon.precio}">
                </div>
            </div>            
            <div class="form-group row">
                <label for="staticPhome" class="col-sm-4 col-form-label">Imagen:</label>
                <div class="col-sm-7">            
                    <img src=${createLink(controller:"salon", action:"verImagen", id:"${this.salon.id}")} width='300' />
                </div>
            </div>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <fieldset class="buttons">
                <g:link action="edit" resource="${this.salon}">Editar</g:link>
                <input type="submit" value="Eliminar" onclick="return confirm('${message(code: 'Está seguro?')}');" />
            </fieldset>
        </g:form>
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