<!doctype html>
<html>
<head>
    <!--<meta name="layout" content="main"/>-->
    <meta charset="utf-8">
    <title>Alquileres de salones MJyS</title>        
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="D:\Cosas en Mega\Facultad\3ro\Programacion III (2017)\Laboratorio\estilos.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <header>
        <div class="container-fluid bg-2 text-center">
            <h1>Alquileres de salones MJyS</h1>
        </div>
    </header>
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
                <a class="navbar-brand" href="Laboratorio-Inicio.html">Inicio</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">					
                    <li><a href="Laboratorio-Galeria.html">Galeria</a></li>
                    <li><a href="Laboratorio-Reservar.html">Reservar</a></li>						
                    <li><a href="Laboratorio-VerReserva.html">Ver/Eliminar Reservas</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">					
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Iniciar Sesion</b> <span class="caret"></span></a>
                        <ul id="login-dp" class="dropdown-menu">
                            <li>
                                <div class="row">
                                    <div class="col-md-12">											
                                        <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                            <div class="form-group">
                                                <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email" required>
                                            </div>
                                            <div class="form-group">
                                                <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Contraseña" required>
                                                <div class="help-block text-right"><a href="">Olvidaste tu Contraseña?</a></div>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-primary btn-block">Aceptar</button>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">Recordarme
                                                </label>
                                            </div>
                                            <br/><br>
                                            Eres Nuevo? <a href="Laboratorio-Registrame.html"><b>Registrarme</b></a>
                                        </form>
                                    </div>									
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--Acá están los controladores-->
    <div id="content" role="main">
        <section class="row colset-2-its">
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
</html>