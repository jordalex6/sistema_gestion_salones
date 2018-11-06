<!DOCTYPE html>
<html>
    <head>
         <meta name="layout" content="user_account" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <h1>Editar Información de Perfil</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.user}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form resource="${this.user}" method="PUT">
                <g:hiddenField name="version" value="${this.user?.version}" />
                <div class="form-group row mt-2">
                    <label for="staticEmail" class="col-sm-4 col-form-label">Nombre de Usuario:</label>
                    <div class="col-sm-7">
                        <input type="text" readonly class="form-control" name="username" disable
                                id="staticEmail" value="${this.user.username}">
                    </div>
                </div>
                <div class="form-group row mt-2">
                    <label for="inputName" class="col-sm-4 col-form-label">Nombre:</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="firstName"
                                id="inputName" value="${this.user.firstName}">
                    </div>
                </div>
                <div class="form-group row mt-2">
                    <label for="inputLastName" class="col-sm-4 col-form-label">Apellido:</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="lastName"
                                 id="inputLastName" value="${this.user.lastName}">
                    </div>
                </div>
                <div class="form-group row mt-2">
                    <label for="inputBirthday" class="col-sm-4 col-form-label">Fecha Nacimiento:</label>
                    <div class="col-sm-7">
                        <input type="date" class="form-control" name="birthday"
                                id="inputBirthday" value="${this.user.birthday}">
                    </div>
                </div>
                <div class="form-group row mt-2">
                    <label for="inputPhone" class="col-sm-4 col-form-label">Telefono:</label>
                    <div class="col-sm-7">
                        <input type="number" class="form-control" name="phone"
                                id="inputPhone" value="${this.user.phone}">
                    </div>
                </div>
                    <fieldset class="buttons mt-3">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        
    </body>
</html>
