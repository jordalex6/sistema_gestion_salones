<html>
<head>
	<meta name="layout" content="${gspLayout ?: 'main'}"/>
	<title><g:message code='springSecurity.login.title'/></title>
    <asset:stylesheet src="estilos.css"/>    
</head>

<body>
<div id="login">
	<div class="inner"> 
		<div class="fheader"><g:message code='springSecurity.login.header'/></div>

			<g:if test='${flash.message}'>
				<div class="login_message">${flash.message}</div>
			</g:if>

		<form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="on">
			<p>
				<label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
				<input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
			</p>

				<p>
					<label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
					<input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
				</p>

				<p id="remember_me_holder">
					<input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
					<label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
				</p>

				<p>
					<input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
				</p>
			</form>
		</div>
	</div>
	<script>
		(function() {
			document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
		})();
	</script>
</body>
</html>