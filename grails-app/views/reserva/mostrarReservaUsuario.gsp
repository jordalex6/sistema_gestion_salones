<!DOCTYPE html>
<html>  
  <head>
	<title>RESERVAS</title>
  <calendar:resources/>
    
  </head>  
  <body>
    <g:each in="${mostrarReservaUsuario?}"> 
      <tr>    
      </tr>
        <table>
          <tr>
            <th>Codigo</th>
            <th>Descripcion</th>
            <th>Precio</th>
          </tr>
          <g:each in="${listado?}">
            <tr>
              <td><g:link action="darBaja" id="${it.id}">darBaja</g:link></td>
              <th>${it.salon.nombre} </th>
              <th> <g:formatDate format="yyyy/MM/dd" date="${it.fecha_actual}"/></th>
              <th> <g:formatDate format="yyyy/MM/dd" date="${it.fechaReserva}"/></th>
            </tr>
          </g:each>
        </table>
</html>