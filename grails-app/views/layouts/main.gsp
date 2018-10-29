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
                                    <g:link controller="salon" action="index">Salones</g:link>                            
                                </li>
                                <%-- <li class="nav-item">
                                    <g:link controller="consulta" action="index">Consulta</g:link>                                
                                </li>
                                <li class="nav-item active">
                                    <g:link controller="practica" action="index">Practicas Realizadas</g:link>                                
                                </li>
                                <li class="nav-item">
                                    <g:link controller="tipoPractica" action="index">Tipos de Practicas</g:link>                                
                                </li> --%>
                            </ul>
                            <!--boton de inicia sesion-->
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
                                                        <!--Eres Nuevo? <a href="Laboratorio-Registrame.html"><b>Registrarme</b></a>-->
                                                        <div class="bottom text-center" style="color: red;">
                                                            Nuevo aquí? 
                                                            <g:link controller="contacto" action="showRegistro">Registrate AQUI</g:link></a>
                                                        </div>
                                                    </form>
                                                </div>									
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </section>
                </div>
            </div>
        </nav>
    </header>
    <g:layoutBody/>
    <!--acá esta el fotter-->
    <div class="footer" role="contentinfo">
        <footer class="container-fluid text-center">
			<p>Salones S & M - Direccion: Belgrano 1700 - Telefono:3834123456</p>  
		</footer>
    </div>
    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
    <asset:javascript src="application.js"/>
</body>
</html>