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
    <asset:stylesheet src="estilos.css"/>    

    <g:layoutHead/>
</head>
<body>
    <header role="banner" class="nav-header nav-header-plus nav-header--is-leave">  
        <div class="jumbotron jumbotron-fluid no-margin-bottom">
            <div class="container text-xs-center">
                <h1 class="display-3 m-t-1">James Barrett</h1>
                <hr>
                <p class="lead">Let's keep this simple. I am an aspiring Front-End Developer,
                lifelong learner and Arsenal sufferer. View my work below.</p>
                <i class="fa fa-2x fa-chevron-down" aria-hidden="true"></i>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark container">
            <div class="container-fluid">
                <g:link class="navbar-brand" view="index">Inicio</g:link>    
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                    <!--aca está el nav negro de arriba-->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav mr-auto">
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                       <%--  <li class="nav-item">
                            <g:link class="nav-link" controller="salon" action="index">Salones</g:link>                            
                        </li>
                        <li class="nav-item">
                            <g:link class="nav-link" controller="reserva" action="index">Mis Reservas</g:link>                                
                        </li> --%>
                    </ul>
               <%--      <g:if test="${session!=null && session.Username!=null}">
                        <div class="nav" role="navigation">
                            <ul>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario: ${session.Username}</a></li>
                            <li><g:link controller="login" action="logout" controller="login"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</g:link></li>
                            </ul>
                        </div>
                    </g:if> --%>

                    <sec:ifNotLoggedIn> <%-- etiqueta spring secure: Muestra el contenido del cuerpo interno si el usuario no está autenticado. --%>
                    <!--boton de inicia sesion-->
                        <ul class="nav navbar-nav ml-auto">
                          	<li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-log-in"></span> Ingresar</a>
				                <div id="login-dp" class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="padding: 15px; padding-bottom: 10px;">
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
                            </li>
                        </ul>
                        
                    </sec:ifNotLoggedIn>
                    <sec:ifLoggedIn> <%-- etiqueta spring secure: Muestra el contenido del cuerpo interno si el usuario está autenticado. --%>
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-log-in"></span><b>Bienvenido <sec:username/></b></a>
				                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <g:link class="dropdown-item" controller="user" action="show">Mi Cuenta</g:link>
                                <g:link class="dropdown-item" controller="logout" action="index"><span class="glyphicon glyphicon-log-in"></span>Cerrar Sesion</g:link>
                                </div>
                            </li>	
                        </ul> 
                    </sec:ifLoggedIn>		
                </div>
            </div>
        </nav>
    </header>
    <!-- Body -->
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

<%-- <!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
		    <asset:image src="grails.svg" alt="Grails Logo"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>
    <g:layoutBody/>
    <div class="footer" role="contentinfo"></div>
    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
    <asset:javascript src="application.js"/>
</body>
</html> --%>