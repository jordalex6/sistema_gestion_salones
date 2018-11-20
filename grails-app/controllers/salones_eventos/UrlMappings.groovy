package salones_eventos

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"principal")
        "500"(view:'/error')
        "404"(view:'/notFound')

   
        "/api/salones"(controller: "salonRest", parseRequest: true) {
            action = [GET: "index", POST: "save" ]}

        "/api/salones/$id"(controller: "salonRest", parseRequest: true) {
        action = [GET: "show", PUT: "update", DELETE: "delete"] }

        "/api/salones/tipo/$tipoSalon"(controller: "salonRest", parseRequest: true) {
        action = [GET: "salonesPorTipo"] }

        "/api/reservas/salon/$salon"(controller: "reservaRest", parseRequest: true){
            action = [GET: "reservasPorSalon"] }

        "/api/reservas/fecha/$year?/$month?/$day"(controller: "reservaRest", parseRequest:true){
            action = [GET: "reservasPorFecha"] }
    }
}
 