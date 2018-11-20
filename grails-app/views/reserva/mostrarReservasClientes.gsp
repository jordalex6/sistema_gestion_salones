<!DOCTYPE html>
<html>  
    <head>
	  <title>RESERVAS</title>
    <calendar:resources/>
    <meta name="layout" content="user_account"/>    
  </head>  
  <body>
    <div id="index-reserva" class="content scaffold-index" role="main">
      <h1 class="mt-3">Mis Reservas Pendientes</h1>
      <table>
        <tr>
          <th>Acción</th>
          <th>Nombre Salon</th>
          <th>Fecha de Creación</th>
          <th>Fecha de Reserva</th>
          <th>Precio</th>
        </tr>
            <g:each in="${reservaList}" var="reserva">
              <tr>
                <td><g:link action="cancelarReserva" id="${reserva.id}">Cancelar</g:link></td>
                <th>${reserva.salon.nombre} </th>
                <th> <g:formatDate format="yyyy/MM/dd" date="${reserva.dateCreated}"/></th>
                <th> <g:formatDate format="yyyy/MM/dd" date="${reserva.fechaReserva}"/></th>
                <th>${reserva.precio} </th>
              </tr>
          </g:each>
      </table>
    </div>
</html>