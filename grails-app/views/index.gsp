<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <!--esta linea hace salir el nombre de salon arriba de la lista-->
    <g:set var="entityName" value="${message(code: 'salon.label', default: 'Salon')}"/>
</head>
<body>
    <!--acá está el filtro de los salones-->
    <g:form controller="salon" action="filtrarSalon" method="">
        <label for="precio">Precio</label>
        <select name="precio">
            <option value="1">0 - 1000</option>
            <option value="2">1000 - 5000</option>
            <option value="3">5000 - 10000</option>
            <option value="4">10000 - 15000</option>
        </select>
        <label for="capacidad">Capacidad</label>
        <select name="capacidad">
            <option value="1">0 - 50</option>
            <option value="2">50 - 100</option>
            <option value="3">150 - 200</option>
            <option value="4">200 - 300</option>
        </select>
        <label for="tipo">Tipo</label>
        <select name="tipo">
            <option value="1">Normal</option>
            <option value="2">Vip</option>
        </select>
        <label for="nombre">Nombre</label>
        <g:textField name="nombre"/>
        <br>
        <input type="submit"/>
        <input type="reset"/>
    </g:form>
    <!--aca van todos los salones o los filtrados-->
    <%-- Con este codigo se hace para listar los salones, pero esa lista se hace en la vista index de salon y yo 
    acá la estoy intentando hacer en la vista index fuera de salon, creo que por eso no funciona --%>        
    <h1>Lista de Salones</h1>
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
        <g:each in="${index?}"> <!--preguntar a la profe-->
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
    </table>
</body>
</html>

<%-- <!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>
    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>
            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>
            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>
</body>
</html> --%>