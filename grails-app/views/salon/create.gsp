<!doctype html>
<html>
<head>
    <meta name="layout" content="user_account"/>    
</head>
<body>
    <g:uploadForm action="save" method="POST">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" required id="nombre">                
            </div>
            <div class="fieldcontain required">
                <label for="descripcion">Descripcion::</label>
                <input type="text" name="descripcion" required id="descripcion">                
            </div>
            <div class="fieldcontain required">
                <label for="direccion">Direccion:</label>
                <input type="text" name="direccion" required id="direccion">                
            </div>
            <div class="fieldcontain required">
                <label for="telefono">Telefono:</label>                
                <input type="text" name="telefono" pattern="[0-9]{10}" required id="telefono"/>
            </div>
            <div class="fieldcontain required">
                <label for="tipoSalon">Tipo:</label>
                <select name="tipoSalon" required id="tipoSalon">
                    <option value="normal">normal</option>
                    <option value="vip">vip</option>
                </select>
            </div>
            <div class="fieldcontain required">
                <label for="capacidad">Capacidad:</label>
                <g:textField type="number" name="capacidad" required min="0" id="capacidad"/>
            </div>
            <div class="fieldcontain required">
                <label for="precio">Precio:</label>
                <g:textField type="number decimal" name="precio" required id="precio"/>
            </div>
            <div class="fieldcontain required">
                <label for="imagen">Imagen:</label>
                <input type="file" name="imagen" required id="imagen">                
            </div> 
        </fieldset>        
        <fieldset class="buttons">            
            <g:submitButton name="create" value="Crear"/>
            <input type="reset"/>
        </fieldset>
    </g:uploadForm>
    <!--este tambien funciona y es mas corto, pero es el del scaffolding modificado-->
    <%-- <g:uploadForm resource="${this.salon}" method="POST">
        <fieldset class="form">
            <f:all bean="salon" except="reserva, propietario"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" value="Crear" />
        </fieldset>
    </g:uploadForm> --%>
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