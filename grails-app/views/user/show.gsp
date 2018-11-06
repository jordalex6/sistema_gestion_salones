<!DOCTYPE html>
<html>
    <head>
          <meta name="layout" content="user_account" />
        <meta name="layout" content="user_account" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>

    <body>
        <a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div id="show-user" class="content scaffold-show" role="main">
            <h1>Mis Datos: ${this.user.username} </h1>
            <h1>Mis Datos</h1>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Nombre de Usuario:</label>
                <div class="col-sm-7">
                <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="${this.user.username}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticName" class="col-sm-4 col-form-label">Nombre:</label>
                <div class="col-sm-7">
                <input type="text" readonly class="form-control-plaintext" id="staticName" value="${this.user.firstName}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticLastName" class="col-sm-4 col-form-label">Apellido:</label>
                <div class="col-sm-7">
                <input type="text" readonly class="form-control-plaintext" id="staticLastName" value="${this.user.lastName}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticBirthday" class="col-sm-4 col-form-label">Fecha Nacimiento:</label>
                <div class="col-sm-7">
                <input type="text" readonly class="form-control-plaintext" id="staticBirthday" value="${this.user.birthday}">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticPhome" class="col-sm-4 col-form-label">Telefono:</label>
                <div class="col-sm-7">
                <input type="text" readonly class="form-control-plaintext" id="staticPhome" value="${this.user.phone}">
                </div>
            </div>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
                <div class="message" role="status">${flash.message}</div>
            </g:if>
           <%--  <f:display bean="user" /> --%>
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                </fieldset>
        </div>
    
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            </fieldset>
       
    </body>
</html>
