<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta name="layout" content="mainSalon"/> <!--no se como mostrar los dos main uno abajo del otro-->
</head>
<body>
    <!--acá van todos los salones, ver que está al pedo de todo esto jaja-->
    <div id="list-salon" class="content scaffold-list" role="main">
        <h1>Lista de Salones</h1>
        <f:table collection="${salonList}" />
        <div class="pagination">
            <g:paginate total="${salonCount ?: 0}" />
        </div>
    </div>
    <%-- <h1>Lista de Salones</h1>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Direccion</th>
            <th>Telefono</th>
            <th>Tipo de Salon</th>
            <th>Capacidad</th>
            <th>Precio</th>
            <th>Propietario</th>
            <th>Imagenes</th>
        </tr>
        <g:each in="${index?}"> <!--preguntar a la profe por que no funciona-->
            <tr>
                <td>${it.nombre}</td>
                <td>${it.direccion}</td>
                <td>${it.telefono}</td>
                <td>${it.tipoSalon}</td>
                <td>${it.capacidad}</td>
                <td>${it.precio}</td>
                <td>${it.propietario}</td>
                <td>${it.imagen}</td>
            </tr>
        </g:each>
    </table> --%>
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
