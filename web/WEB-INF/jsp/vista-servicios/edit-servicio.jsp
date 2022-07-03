<%-- 
    Document   : edit-servicio.jsp
    Created on : 23 jun 2022, 0:33:25
    Author     : Rafaelito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="WEB-INF/JQuery/jquery3.6.0.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
        <script src="WEB-INF/JQuery/jquery3.6.0.min.js" type="text/javascript"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
        <style>
            .centrado{
                text-align: center;
            }
            .mensajeError {
                color: red;
                font-size: 12px;
                display: none;
            }
            .error {
                border-color: red;
            }

            .mostrar {
                display: block;
            }
            .select{
                font-weight: 500;
            }

        </style>

        <title>Actualizacion de Estado</title>
    </head>
    <body> 
        
        <header>
            <jsp:include page="/WEB-INF/include/header.jsp" />
        </header>

        <div class="container">
            <div class="row justify-content-center mb-3 mt-3">
                <div class="fondo card col-md-6">
                    <h1 class="centrado">Edicion de Orden</h1>
                    <form class="p-3 rounded needs-validation" id="formularioEdit" method="post" action="ControllerCliente">
                        <input type="hidden" name="id" value="${orden.idOrden}" />
                        <div class="mb-3">
                            <label for="txtOrden" class="form-label">Orden:</label>
                            <input type="text" class="form-control" id="txtOrden" value = '<c:out value="${orden.idOrden}" />' name="txtOrden" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label for="txtfechaSolicitud" class="form-label">Fecha de Solicitud:</label>
                            <input type="text" class="form-control" id="txtFechaSolicitud" value = '<c:out value="${orden.fechaSolicitud}" />' name="txtFechaSolicitud" aria-label="Disabled input example" disabled readonly>
                        </div>   
                        <div class="mb-3">
                            <label for="txtElectro" class="form-label">Electrodomestico Defectuoso:</label>
                            <input type="text" class="form-control" id="txtElectro" value='<c:out value = "${orden.electro.electro}"/>' name="txtElectro" aria-label="Disabled input example" disabled readonly>
                        </div>
                 
                        <div class="mb-3">
                            <label for="txtEstado" class="form-label">Estado de Electrodomestico:</label>
                            <select class="form-select" id='txtEstado' name="txtEstado" aria-label=".form-select-lg " required>
                                <option value=''>Estado Electrodomestico</option>
                                <option value ="En Reparacion" class="select">En Reparacion</option>
                                <option value="Reparado" class="select">Reparado</option>
                                <option value="Sin Solucion" class="select">Sin Solucion</option>
                            </select>
                            <div id="errorRut" class="mensajeError">El Valor ingresado no es valido!</div>
                        </div>

                        <div class="mb-3">
                            <label for="txtRut" class="form-label">Rut:</label>
                            <input type="text" class="form-control" id="txtRut" value='<c:out value = "${orden.cliente.rut}"/>' name="txtRut" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label for="txtNombre" class="form-label">Nombres:</label>
                            <input type="text" class="form-control" id="txtNombre" value='<c:out value = "${orden.cliente.nomCliente}"/>' name="txtNombre" aria-label="Disabled input example" disabled readonly>
                            <div id="errorNombre" class="mensajeError">Nombre no puede estar vacio!</div>
                        </div>
                        <div class="mb-3">
                            <label for="txtApellido" class="form-label">Apellidos:</label>
                            <input type="text" class="form-control" id="txtApellido" value='<c:out value = "${orden.cliente.apellido}"/>' name="txtApellido" aria-label="Disabled input example" disabled readonly>
                            <div id="errorApellido" class="mensajeError">El Valor ingresado no es valido!</div>
                        </div>
                        <div class="mb-3">
                            <label for="txtDireccion" class="form-label">Direccion:</label>
                            <input type="text" class="form-control" id="txtDireccion" value='<c:out value = "${orden.cliente.direccion}"/>' name="txtDireccion" aria-label="Disabled input example" disabled readonly>
                            <div id="errorDireccion" class="mensajeError">El Valor ingresado no es valido!</div>
                        </div>    
                        <div class="mb-3">
                            <label for="txtTelefono" class="form-label">Telefono:</label>
                            <input type="text" class="form-control" id="txtTelefono" value='<c:out value = "${orden.cliente.telefono}"/>' name="txtTelefono" aria-label="Disabled input example" disabled readonly>
                            <div id="errorTelefono" class="mensajeError">El valor ingresado no es valido!</div>
                        </div>


                        <div class="d-grid gap-2 col-6 mx-auto">
                            <input type="hidden" name="form" id="form" value="edit" />
                            <button class="btn btn-primary mb-3" type="submit">Send</button>

                        </div>
                    </form>
                </div>
            </div>
        </div> 
    </body>
</html>
