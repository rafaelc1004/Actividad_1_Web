<%-- 
    Document   : vista-cliente.jsp
    Created on : 23 jun 2022, 22:57:35
    Author     : Rafaelito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <jsp:include page="/WEB-INF/include/header.jsp" />
        </header>
        <div class="container">
            <div class="row justify-content-center mb-3 mt-3">
                <div class="fondo card col-md-6">
                    <h1 class="centrado">Informacion de Orden de Servicio</h1>
                    <form class="p-3 rounded needs-validation">
                        <input type="hidden" name="id" value="${orden.idOrden}" />
                        <div class="mb-3">
                            <label class="form-label">Orden:</label>
                            <input type="text" class="form-control" value="${orden.idOrden}" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Fecha de Solicitud:</label>
                            <input type="text" class="form-control" value="${orden.fechaSolicitud}" aria-label="Disabled input example" disabled readonly>
                        </div>   
                        <div class="mb-3">
                            <label class="form-label">Electrodomestico Defectuoso:</label>
                            <input type="text" class="form-control" value = "${orden.electro.electro}" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Fecha de Actualizacion:</label>
                            <input type="text" class="form-control" value="${orden.electro.fechaUpdate}" aria-label="Disabled input example" disabled readonly>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Estado:</label>
                            <input type="text" class="form-control" value = "${orden.electro.estado}" aria-label="Disabled input example" disabled readonly>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Rut:</label>
                            <input type="text" class="form-control" value = "${orden.cliente.rut}" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nombres:</label>
                            <input type="text" class="form-control" value = "${orden.cliente.nomCliente}" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Apellidos:</label>
                            <input type="text" class="form-control" value = "${orden.cliente.apellido}" aria-label="Disabled input example" disabled readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Direccion:</label>
                            <input type="text" class="form-control" value = "${orden.cliente.direccion}" aria-label="Disabled input example" disabled readonly>
                        </div>    
                        <div class="mb-4">
                            <label class="form-label">Telefono:</label>
                            <input type="text" class="form-control" value = "${orden.cliente.telefono}" aria-label="Disabled input example" disabled readonly>
                        </div>

                    </form>
                </div>
            </div>
        </div> 
    </body>
</html>
