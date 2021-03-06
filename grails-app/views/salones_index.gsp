<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <%-- <asset:stylesheet src="estilos.css"/>    --%> 
    <!--esta linea hace salir el nombre de salon arriba de la lista-->
    <g:set var="entityName" value="${message(code: 'salon.label', default: 'Salon')}"/>
</head>
<body>
    <!--acá está el filtro de los salones-->
    <div class="container">
        <div class="row mt-3">
            <div class="col-3">
                <aside class="filter-container">
                    <g:form controller="principal" action="salonesPorPrecio" method="POST">
                        <div class="form-group mt-2">
                            <label for="precioSelect" class="col col-form-label">Precio</label>
                            <div class="col">
                                <select class="form-control" id="precioSelect" name="precioSelect">
                                    <option value="1">--</option>
                                    <option value="2">0 - 1000</option>
                                    <option value="3">1000 - 5000</option>
                                    <option value="4">5000 - 10000</option>
                                    <option value="5">10000 - 15000</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group mt-2">
                            <label for="capacidadSelect" class="col col-form-label">Capacidad</label>
                            <div class="col">
                                <select class="form-control" id="capacidadSelect" name="capacidadSelect" >
                                    <option value="1">--</option>
                                    <option value="2">0 - 50</option>
                                    <option value="3">50 - 150</option>
                                    <option value="4">150 - 200</option>
                                    <option value="5">200 - 300</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group mt-2">
                            <label for="tipoSelect" class="col col-form-label">Tipo de salon</label>
                            <div class="col">
                                <select class="form-control" id="tipoSelect" name="tipoSelect">
                                    <option value="1">--</option>
                                    <option value="2">Normal</option>
                                    <option value="3">Vip</option>
                                </select>
                            </div>
                        </div>
                        <div class="filter-buttons">
                            <g:link class="ui-button ui-button--secondary" controller="principal" action="index">Aplicar</g:link>                            
                            <input type="reset" class="ui-button ui-button--secondary" value="Restablecer">
                        </div>                         
                    </g:form>
                </aside>
            </div> 
            <div class="col-9"> 
                <div class="row">
                    <div class="card-deck">
                        <g:each in="${salonList}" var="salon">
                           <%--  <div class="col-sm-6"> --%>
                            <g:link class="custom-card" controller="principal" action="show" id="${salon.id}">
                                <div class="card">
                                    <%-- <g:img class="card-img-top" dir="images" file="salon_esmeralda.jpg" height="250"/> --%>
                                    <img src=${createLink(controller:"principal", action:"verImagen", id:"${salon.id}")} width='700'/>
                                    <div class="card-body">
                                        <h5 class="card-title">${salon.nombre}</h5>
                                        <h6 class="card-subtitle mb-2 text-muted">${salon.direccion}</h6>
                                        <p class="card-text">${salon.descripcion}</p>
                                    </div>
                                </div>
                            </g:link>
                            <%-- </div> --%>
                        </g:each>
                    </div>
                </div>
            </div>
        </div><%-- Fin --%>
    </div>

</body>
</html>

