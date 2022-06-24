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
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Menu de Navegacion</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/ServicioTecnico/index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ServicioTecnico/ControllerCliente?accion=form">Crear Orden de Servicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ServicioTecnico/ControllerCliente?accion=list">Listar Ordenes de Servicio</a>
                        </li>
                       
                    </ul>
                    <form class="d-flex" id="formulario" method="post" action="ControllerCliente">
                        <input class="form-control me-2" id="txtBuscar" name="txtBuscar" type="search" placeholder="Buscar Numero de Orden " aria-label="Search">
                        <input type="hidden" id="form" name="form" value="search"/>
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </body>
</html>
