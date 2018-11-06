<!doctype html>
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

    <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/AMEstyle.css">-->
    <g:layoutHead/>
</head>
<body>
    <header>
        <div class="jumbotron jumbotron-fluid">            
            <h1 class="display-1">Alquileres JMyS</h1>
            <p class="lead">Somos una pagina dedicada al alquieler de salones para eventos.</p>        
        </div> 
        <nav class="navbar navbar-default navbar-inverse" role="navigation">
            <div class="container-fluid">
                <!--Lo que esta dentro de este div es para que salga el cuadrdito desplegable cuando lo usamos en celular-->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>            
                </div>
                <!--aca está el nav negro de arriba-->
                <div role="main" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <section class="row colset-2-its">                    
                        <div id="controllers" role="navigation"> 
                            <!--acá estan los links a los controladores-->                       
                            <ul class="nav navbar-nav">
                                <li class="nav-item active">
                                    <g:link controller="salon" action="index">Lista de Salones</g:link>                                
                                </li>
                                <%-- <li class="nav-item">
                                    <g:link controller="salon" action="edit">Editar/Eliminar Salon</g:link>                            
                                </li> --%>
                                <li class="nav-item">
                                    <g:link controller="salon" action="create">Agregar Salon</g:link>                            
                                </li>
                            </ul>
                            <!--boton de inicia sesion-->
                        </div>
                    </section>
                </div>
            </div>
        </nav>
    </header>
    <g:layoutBody/>
    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
    <asset:javascript src="application.js"/>
</body>
</html>