<!DOCTYPE html>
<html>  
  <head>
	<title>RESERVAS</title>
    <calendar:resources/>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="estilos.css"/>    
  </head>  
  <body>
     <div class="container">
        <div class="detail-salon-container">
            <div id="create-reserva" class="content scaffold-create" role="main">
                <h1 class="mt-3">Crear resarva para el salon ${reserva?.salon.nombre}</h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.reserva}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.reserva}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>  
                <g:form resource="${this.reserva}" method="POST">
                    <g:hiddenField name="version" value="${this.reserva?.version}" />
                    <g:hiddenField name="cliente" value="${this.reserva.cliente.id}" />
                    <g:hiddenField name="salon" value="${this.reserva.salon.id}" />|
                    <g:hiddenField name="cancelada" value="${this.reserva.cancelada}" />
                    <div class="form-group row mt-2">
                        <label for="fechaReserva" class="col-sm-4 col-form-label">¿Para cuando desea reservar?</label>                                        
                        <div class="col-sm-7">
                        <g:datePicker id="fechaReserva" name="fechaReserva" value="${new Date()}" precision="day" years="${2018..2030}"/>             
                        </div>
                    </div>
                    <div class="form-group row mt-2">
                        <label for="precio" class="col-sm-4 col-form-label">Precio de la reserva</label>
                        <div class="col-sm-3">
                            <input type="number" readonly class="form-control" id="precio" name="precio" value="${this.reserva.precio}">
                        </div>
                    </div>
                    <div class="form-group row mt-2">
                        <label for="cant_personas" class="col-sm-4 col-form-label">Cantidad de personas</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="cant_personas" name="cant_personas" value="">
                        </div>
                    </div>
                    <input  class="btn btn-primary btn-block mt-3 mb-3" type="submit" value="Reservar" />
                </g:form>
            </div>
        </div>
    </div>
    
</html>

