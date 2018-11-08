<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <asset:stylesheet src="estilos.css"/>    
    </head>
    <body>
         <div class="container">
            <div class="detail-salon-container">
                <div class="row mt-3">
                    <div class="col mt-3">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <g:img class="d-block w-100" dir="images" file="salon_esmeralda.jpg" height="450"/>
                                </div>
                                <div class="carousel-item">
                                    <g:img class="d-block w-100" dir="images" file="salon_esmeralda.jpg" height="450"/>
                                </div>
                                <div class="carousel-item">
                                    <g:img class="d-block w-100" dir="images" file="salon_esmeralda.jpg" height="450"/>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        
                        <h3>Descripción</h3>
                        <p>${salon.descripcion}</p>
                        <h3>Información</h3>
                        <div class="row mt-3"> 
                            <div class="form-group col-md-6">
                                <label for="staticDireccion">Dirección</label>
                                <input type="text" readonly class="form-control-plaintext" id="staticDireccion" value="${salon.direccion}">
                            </div>
                             
                            <div class="form-group col-md-6">
                                <label for="staticTelefono">Telefono</label>
                                <input type="text" readonly class="form-control-plaintext" id="staticTelefono" value="${salon.telefono}">
                            </div>
                             
                            <div class="form-group col-md-6">
                                <label for="staticTipoSalon">Tipo de salón</label>
                                <input type="text" readonly class="form-control-plaintext" id="staticTipoSalon" value="${salon.tipoSalon}">
                            </div>
                             
                            <div class="form-group col-md-6">
                                <label for="staticCapacidad">Capacidad</label>
                                <input type="text" readonly class="form-control-plaintext" id="staticCapacidad" value="${salon.capacidad} personas">
                            </div>
                        </div> 

                    </div>
                    <div class="col-3 mt-3 div-right-border">
                        <h1 style=" font-size: 45px;font-weight: 100px;">${salon.nombre}</h1>
                        <h3>Precio del alquiler</h3>
                        <p class="mt-3" style=" font-size: 30px;">$ ${salon.precio}</p>
                        <h3>Precio de la reserva</h3>
                        <p class="mt-3" style=" font-size: 20px;">$ ${reserva}</p>
                        <g:link class="ui-button ui-button--primary" controller="reserva" action="reservarSalon" id="${salon.id}">Realizar Reserva</g:link>
                        <button type="submit" class="ui-button ui-button--primary">Realizar Reserva</button>
                    </div>
                </div>
                
            </div>
           
         </div>
      
    </body>
</html>