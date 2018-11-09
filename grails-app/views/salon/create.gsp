<!doctype html>
<html>
<head>
    <meta name="layout" content="user_account"/>    
</head>
<body>
    <%-- <g:uploadForm action="save" resource="${this.salon}" method="POST">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" required value id="nombre">                
            </div>
            <div class="fieldcontain required">
                <label for="descripcion">Descripcion::</label>
                <input type="text" name="descripcion" required value id="descripcion">                
            </div>
            <div class="fieldcontain required">
                <label for="direccion">Direccion:</label>
                <input type="text" name="direccion" required value id="direccion">                
            </div>
            <div class="fieldcontain required">
                <label for="telefono">Telefono:</label>
                <g:textField type="text" name="telefono" required value id="descripcion"/>
            </div>
            <div class="fieldcontain required">
                <label for="tipoSalon">Tipo</label>
                <select name="tipoSalon">
                    <option value="1">normal</option>
                    <option value="2">vip</option>
                </select>
            </div>
            <div class="fieldcontain required">
                <label for="capacidad">Capacidad:</label>
                <g:textField type="number" name="capacidad" required value id="descripcion"/>
            </div>
            <div class="fieldcontain required">
                <label for="precio">Precio:</label>
                <g:textField type="number" name="precio" required value id="descripcion"/>
            </div>
            <div class="fieldcontain required">
                <label for="imagen">Imagen:</label>
                <g:textField type="file" name="imagen" required value id="descripcion"/>
            </div> 
        </fieldset>
        <!--este boton no funciona-->
        <fieldset class="buttons">
            <g:submitButton name="create" value="Crear"/>
            <input type="reset"/>
        </fieldset>
    </g:uploadForm> --%>
    <!--esto funciona menos para la imagen-->
    <g:uploadForm resource="${this.salon}" method="POST">
        <fieldset class="form">
            <f:all bean="salon" except="reserva, propietario"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" value="Crear" />
        </fieldset>
    </g:uploadForm>
</body>
</html>

<%-- <!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'salon.label', default: 'Salon')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-salon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-salon" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
            <g:form resource="${this.salon}" method="POST">
                <fieldset class="form">
                    <f:all bean="salon"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html> --%>