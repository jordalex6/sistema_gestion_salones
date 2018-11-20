<!DOCTYPE html>
<html>  
    <head>
	  <title>RESERVAS</title>
    <calendar:resources/>
    <meta name="layout" content="user_account"/>    
  </head>  
  <body>
    <div id="index-reserva" class="content scaffold-index" role="main">
      <h1 class="mt-3">Reservas Canceladas</h1>
      <table>
        <tr>
          <th>Nombre Salon</th>
          <th>Fecha de Reserva</th>
          <th>Fecha de Cancelación</th>
          <th>Precio</th>
        </tr>
            <g:each in="${reservaList}" var="reserva">
              <tr>
                <th>${reserva.salon.nombre} </th>
                <th> <g:formatDate format="yyyy/MM/dd" date="${reserva.fechaReserva}"/></th>
                <th> <g:formatDate format="yyyy/MM/dd" date="${reserva.lastUpdated}"/></th>
                <th>${reserva.precio} </th>
              </tr>
          </g:each>
      </table>
    </div>
</html>