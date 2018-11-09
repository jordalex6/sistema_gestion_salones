<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="user_account" />
    </head>
    <body>
        <a href="#edit-salon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <h1>Editar Mi Salón</h1>
        <%-- <g:uploadForm resource="${this.salon}" method="PUT">
            <g:hiddenField name="version" value="${this.user?.version}" />
            <div class="form-group row mt-2">
                <label for="nombre" class="col-sm-4 col-form-label">Nombre:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="nombre" disable value="${this.salon.nombre}">
                </div>
            </div>
            <div class="form-group row mt-2">
                <label for="direccion" class="col-sm-4 col-form-label">Dirección:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="direccion" value="${this.salon.direccion}">
                </div>
            </div>
            <div class="form-group row mt-2">
                <label for="telefono" class="col-sm-4 col-form-label">Telefono:</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="telefono" value="${this.salon.telefono}">
                </div>
            </div>
            <div class="form-group row mt-2">
                <label for="capacidad" class="col-sm-4 col-form-label">Capacidad:</label>
                <div class="col-sm-7">
                    <input type="number" class="form-control" name="capacidad"value="${this.salon.capacidad}">
                </div>
            </div>
            <div class="form-group row mt-2">
                <label for="precio" class="col-sm-4 col-form-label">Precio:</label>
                <div class="col-sm-7">
                    <input type="number" class="form-control" name="precio" value="${this.salon.precio}">
                </div>
            </div>
            <div class="form-group row mt-2">
                <label for="imagen" class="col-sm-4 col-form-label">Imagen:</label>
                <div class="col-sm-7">
                    <input type="file" class="form-control" name="imagen" value="${this.salon.imagen}">
                </div>
            </div>
            <fieldset class="buttons mt-3">
                <input type="submit" value="Actualizar" />
            </fieldset>
        </g:uploadForm> --%>
        <g:uploadForm resource="${this.salon}" method="POST"> <!--acá cambie el metrodo put por post y se pudo editar la foto del salon-->
            <g:hiddenField name="version" value="${this.salon?.version}" />
            <fieldset class="form">
                <f:all bean="salon" except="reserva, propietario"/>
            </fieldset>
            <fieldset class="buttons">
                <input type="submit" value="Actualizar" />
            </fieldset>
        </g:uploadForm>
    </body>
</html>

<%-- <!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'salon.label', default: 'Salon')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-salon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-salon" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.salon}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.salon}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.salon}" method="PUT">
                <g:hiddenField name="version" value="${this.salon?.version}" />
                <fieldset class="form">
                    <f:all bean="salon"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html> --%>