<!DOCTYPE html>
<html>  
  <head>
	<title>RESERVAS</title>
  <calendar:resources/>
    <meta name="layout" content="main"/>  
  </head>  
  <body>
	  <div class="container">
      <div class="detail-salon-container">
        <div id="index-reservas" class="content scaffold-index" role="main">
            <h1 class="mt-3">Reservas Pendientes</h1>
            <table>
              <tr>
                <th>Nombre </th>
                <th>Fecha de reservación</th> 
              </tr>
                <g:each in="${mostrarReservasSalon?}">
                    <tr>
                      <th>${it.salon.nombre} </th>
                      <th> <g:formatDate format="yyyy/MM/dd" date="${it.fechaReserva}"/></th> 
                    </tr>
                </g:each>
            </table>
          </div>
        </div>
    </div>
    
</html>

