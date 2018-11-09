<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="user_account" />
        <g:set var="entityName" value="${message(code: 'propietario.label', default: 'Propietario')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-propietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div id="create-propietario" class="content scaffold-create" role="main">
            <h1>Completar datos requeridos</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.propietario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.propietario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.propietario}" method="POST">
                <div class="form-group row mt-2">
                    <label for="inputCuit" class="col-sm-4 col-form-label">CUIT:</label>
                    <div class="col-sm-7">
                        <input type="text"  class="form-control" name="cuit" disable
                                id="inputCuit">
                    </div>
                </div>
                <div class="form-group row mt-2">
                    <label for="inputName" class="col-sm-4 col-form-label">Razon Social:</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="razonSocial"
                                id="inputName">
                    </div>
                </div>
                 <g:link class="btn btn-secondary mt-2" controller="cuentaBancaria" action="create"></span>Agregar información bancaria</g:link>
                <fieldset class="buttons mt-2">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div> 
    </body>
</html>
