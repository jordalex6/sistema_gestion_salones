<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container">
            <div class="detail-salon-container">
                <div id="create-user" class="content scaffold-create" role="main">
                    <h1 class="mt-3">Registro de usuario</h1>
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
                    <g:form action="save" resource="${this.user}" method="POST">
                        <fieldset class="form">
                            <div class="fieldcontain required">
                                <label for="username">Email</label>
                                <g:textField type="email" name="username" required="true"/>                
                            </div>
                            <div class="fieldcontain required">
                                <label for="password">Contraseña</label>
                                <g:textField type="password" name="password" required="true"/>                
                            </div>
                            <div class="fieldcontain">
                                <label for="firstName">Nombre</label>
                                <g:textField type="text" name="firstName"/>
                            </div>
                            <div class="fieldcontain">
                                <label for="lastName">Apellido</label>
                                <g:textField type="text" name="lastName"/>
                            </div>
                            <%-- <g:hiddenField name="email" value="" />                          --%> 
                        </fieldset>
                        <!--este boton no funciona-->
                        <fieldset class="buttons">
                            <g:submitButton name="create" value="Crear"/>
                            <input type="reset"/>
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>

    </body>
</html>
