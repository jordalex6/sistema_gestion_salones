<!doctype html>
<g:applyLayout name="main">
    <html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title>
            <g:layoutTitle default="JMyS"/>
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
        <asset:stylesheet src="application.css"/>    

        <g:layoutHead/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="row">
                         <div class="col">
                            <h4>Mis Datos</h4>
                            <g:link class="dropdown-item" controller="user" action="show">Datos Usuario</g:link>
                         </div>
                          <div class="col">
                            <h4>Reservas</h4>
                            <g:link class="dropdown-item" controller="reserva" action="mostrarReservaCliente">Mis Reservas</g:link>
                            <g:link class="dropdown-item" controller="reserva" action="mostrarReservaClienteCanceladas">Reservas Canceladas</g:link>
                         </div>
                          <div class="col">
                            <h4>Salon Evento</h4>
                            <g:link class="dropdown-item" controller="salon" action="create">Publicar Salon</g:link>
                            <sec:access expression="hasRole('ROLE_PROPIETARIO')">
                                <g:link class="dropdown-item" controller="salon" action="index">Mis Salones</g:link>
                                <g:link class="dropdown-item" controller="salon" action="index">Reservas</g:link>
                            </sec:access>
                         </div>
                    </div>
                </div>
                <div class="col-9">
                <g:layoutBody/>
                </div>
            </div>
        </div>

        <asset:javascript src="application.js"/>
    </body>
    </html>
</g:applyLayout>