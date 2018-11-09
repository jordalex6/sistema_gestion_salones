<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="user_account" />
    </head>
    <body>
        <g:form action="save" resource="${this.user}" method="POST">
            <fieldset class="form">
                <div class="fieldcontain required">
                    <label for="username">Nombre de Usuario</label>
                    <g:textField type="text" name="username" required="true"/>                
                </div>
                <div class="fieldcontain required">
                    <label for="password">Contraseña</label>
                    <g:textField type="text" name="password" required="true"/>                
                </div>
                <div class="fieldcontain">
                    <label for="firstName">Nombre</label>
                    <g:textField type="text" name="firstName"/>
                </div>
                <div class="fieldcontain">
                    <label for="lastName">Apellido</label>
                    <g:textField type="text" name="lastName"/>
                </div>                
                <div class="fieldcontain">
                    <label for="email">Email</label>
                    <g:textField type="email" name="email"/>
                </div>                
            </fieldset>
            <!--este boton no funciona-->
            <fieldset class="buttons">
                <g:submitButton name="create" value="Crear"/>
                <input type="reset"/>
            </fieldset>
        </g:form>

        <%-- <g:form resource="${this.user}" method="POST">
            <fieldset class="form">
                <f:all bean="user" except="phone, birthday, cliente, propietario"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" value="Crear" />
            </fieldset>
        </g:form> --%>
    </body>
</html>
