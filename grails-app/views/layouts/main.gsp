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
            <p class="lead">Somos una pagina dedicada al alquiler de salones para eventos.</p>        
        </div> 
        <nav class="navbar navbar-default navbar-inverse" role="navigation">
            <div class="container">
                <!--Lo que esta dentro de este div es para que salga el cuadrdito desplegable cuando lo usamos en celular-->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
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
                            <g:if test="${session!=null && session.Username!=null}">
                                <div class="nav" role="navigation">
                                    <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario: ${session.Username}</a></li>
                                    <li><g:link controller="login" action="logout" controller="login"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</g:link></li>
                                    </ul>
                                </div>
                            </g:if>

                            <sec:ifNotLoggedIn> <%-- etiqueta spring secure: Muestra el contenido del cuerpo interno si el usuario no está autenticado. --%>
                            <!--boton de inicia sesion-->
                            <ul class="nav navbar-nav navbar-right">					
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Iniciar Sesion</b> <span class="caret"></span></a>
                                    <ul id="login-dp" class="dropdown-menu">
                                        <li>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="form" autocomplete="off">
                                                        <div class="form-group">
                                                            <p>
                                                                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                                                                <input type="text" class="text_ form-contro" name="${usernameParameter ?: 'username'}" id="username" required/>
                                                            </p>
                                                        </div>
                                                        <div class="form-group">
                                                            <p>
                                                                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                                                                <input type="password" class="text_ form-contro" name="${passwordParameter ?: 'password'}" id="password" required/>
                                                            </p>
                                                        </div>
                                                        <div class="form-group">
                                                            <p>
                                                                <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
                                                            </p>
                                                        </div>
                                                        <div class="checkbox">
                                                            <p id="remember_me_holder">
                                                                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                                                                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                                                            </p>
                                                        </div>  
                                                    </form>
                                                    <br/><br>
                                                    <!--Eres Nuevo? <a href="Laboratorio-Registrame.html"><b>Registrarme</b></a>-->
                                                    <div class="bottom text-center" style="color: red;">
                                                        Nuevo aquí? 
                                                        <g:link controller="contacto" action="showRegistro">Registrate AQUI</g:link></a>
                                                    </div>   
                                                </div>									
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                           </sec:ifNotLoggedIn>
                           <sec:ifLoggedIn> <%-- etiqueta spring secure: Muestra el contenido del cuerpo interno si el usuario está autenticado. --%>
                           <ul class="nav navbar-nav navbar-right">
                            <li class="nav-item">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary"> <b>Bienvenido <sec:username/></b></button>
                                    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Mi Perfil</a>
                                            <a class="dropdown-item" href="#">Salir</a>
                                    </div>
                                </div>
                            </li>	
                               <%--<li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <b>Bienvenido <sec:username/></b>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Mi Perfil</a>
                                        <a class="dropdown-item" href="#">Salir</a>
                                    </div>
                                </li>			 --%>		
                            </ul> 
                           </sec:ifLoggedIn>		
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