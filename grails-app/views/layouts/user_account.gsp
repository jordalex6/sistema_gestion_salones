<!doctype html>
<g:applyLayout name="main">
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

        <g:layoutHead/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="row">
                         <div class="col">
                              <g:link class="dropdown-item" controller="user" action="create">Mi Cuenta</g:link>
                         </div>
                          <div class="col">
                              <g:link class="dropdown-item" controller="user" action="create">Mi Cuenta</g:link>
                         </div>
                          <div class="col">
                              <g:link class="dropdown-item" controller="user" action="create">Mi Cuenta</g:link>
                         </div>
                    </div>
                </div>
                <div class="col-10">
                <g:layoutBody/>
                </div>
            </div>
        </div>

        <asset:javascript src="application.js"/>
    </body>
    </html>
</g:applyLayout>