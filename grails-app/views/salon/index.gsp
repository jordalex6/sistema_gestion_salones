<!doctype html>
<html>
<head>
    <meta name="layout" content="user_account"/>
</head>
<body>
    <!--acá van todos los salones, ver que está al pedo de todo esto jaja-->
    <%-- <div id="list-salon" class="content scaffold-list" role="main">
        <h1>Lista de Salones</h1>
        <f:table collection="${salonList}" />
    </div>     --%>
    
        <table>
          <tr>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Direccion</th>
            <th>Capacidad</th>
            <th>Precio</th>
            <th>Telefono</th>
            <th>Tipo de Salon</th>
            <th>Imagen</th>
          </tr>
          <g:each in="${salonList}" var="salon">
            <tr>
                <td><g:link action="show" id="${salon.id}">${salon.nombre}</g:link></td>
                <th>${salon.descripcion}</th>
                <th>${salon.direccion}</th>
                <th>${salon.capacidad}</th>
                <th>${salon.precio}</th>
                <th>${salon.telefono}</th>
                <th>${salon.tipoSalon}</th>                
                <th><img src=${createLink(controller:"salon", action:"verImagen", id:"${salon.id}")} width='300' /></th>                
            </tr>
          </g:each>
        </table>
    
    <%--<g:each in="${salonList}" var="salon">
        <g:link class="custom-card" controller="principal" action="show" id="${salon.id}">
            <div class="card">
                <g:img class="card-img-top" dir="images" file="salon_esmeralda.jpg" height="250"/>
                <img src=${createLink(controller:"salon", action:"verImagen", id:"${this.salon.id}")} width='300' />
                <div class="card-body">
                    <h5 class="card-title">${salon.nombre}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">${salon.direccion}</h6>
                    <p class="card-text">${salon.descripcion}</p>
                </div>
            </div>
        </g:link>
    </g:each>--%>
</body>
</html>

<%--<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'salon.label', default: 'Salon')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-salon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-salon" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${salonList}" />
            <div class="pagination">
                <g:paginate total="${salonCount ?: 0}" />
            </div>
        </div>
    </body>
</html> --%>