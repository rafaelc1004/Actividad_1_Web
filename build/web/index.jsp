<%-- 
    Document   : index
    Created on : 29 abr 2022, 20:11:26
    Author     : Rafaelito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>


        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="card col-md-6">
                    <p>Registro de Orden</p>
                    <form>
                        <div class="mb-3">
                            <label for="rut" class="form-label">Rut:</label>
                            <input type="text" class="form-control" id="rut" placeholder="Ej. 12345678k" name="rut">
                        </div>
                        <div class="mb-3">
                            <label for="nombres" class="form-label">Nombres:</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Ej. Juanito Perez" name="nombres">
                        </div><!-- comment -->
                        <div class="mb-3">
                            <label for="direccion" class="form-label">Direccion:</label>
                            <input type="text" class="form-control" id="direccion" placeholder="Ej. australia #88" name="direccion">
                        </div>    
                        <div class="mb-3">
                            <label for="telefono" class="form-label">Telefono:</label>
                            <input type="text" class="form-control" id="telefono" placeholder="Ej. 912345678" name="telefono">
                        </div>
                        <div class="mb-3">
                            <label for="electrodomestico" class="form-label">Electrodomestico Defectuoso:</label>
                            <input type="text" class="form-control" id="electrodomestico" placeholder="Ej. Lavadora" name="electrodomestico">
                        </div>
                        <div class="mb-3">
                            <label for="fecha_solicitud" class="form-label">Fecha de solicitud:</label>
                            <input type="date" class="form-control" id="fecha_solicitud" name="fecha_solicitud">
                        </div>
                        <label for="estado_reparacion" value="En reparacion" class="form-label "><h6>Estado de Solicitud</h6></label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="estado_reparar" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                Pendiente
                            </label>
                        </div>              
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="estado_reparar" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                En Reparacion
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="estado_reparar" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                Reparado
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="estado_reparar" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                Sin Solucion
                            </label>
                        </div>
                        <div class="mb-3">
                            <label for="dateLastUpdate" class="form-label">Fecha de ultima actualizacion de Reparacion:</label>
                            <input type="date" class="form-control" id="dateLastUpdate" name="dateLastUpdate">
                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button class="btn btn-primary" type="submit">Send</button>
                            
                        </div></form>
                </div>
            </div>
        </div>

    </body>
</html>
