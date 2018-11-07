<!DOCTYPE html>
<html>  
  <head>
	<title>RESERVAS</title>
  <calendar:resources/>
    
  </head>  
  <body>
	
  <table>
    <tr>
      <th>nombre </th>
     
      <th>fecha que se reservo</th>
      <th>fecha para la que se reservo</th>
      
    </tr>
      <g:each in="${mostrarSalon?}">
     
       
          <tr>

            <th>${it.salon.nombre} </th>
            <th> <g:formatDate format="yyyy/MM/dd" date="${it.fecha_actual}"/></th>
            <th> <g:formatDate format="yyyy/MM/dd" date="${it.fecha_reserva}"/></th>
          
          </tr>

      </g:each>
  </table>
    
</html>

