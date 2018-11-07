<!DOCTYPE html>
<html>  
  <head>
	<title>RESERVAS</title>
  <calendar:resources/>
    
  </head>  
  <body>
	
  
            <g:form resource="${this.reserva}" method="POST">
                <fieldset class="form">
                    <f:all bean="reserva"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    
</html>