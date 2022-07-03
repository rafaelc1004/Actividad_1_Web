<%-- 
    Document   : list-servicio.jsp
    Created on : 22 jun 2022, 22:34:12
    Author     : Rafaelito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet"/>
        <link href="../../css/datatable.min.css" rel="stylesheet" type="text/css"/>

        <title>Lista de Ordenes</title>
        <style>
            .centrado{
                text-align: center;

            }

            .tamanio{
                font-size: 11px;
            }



        </style>

    </head>
    <body>

        <header>
            <jsp:include page="/WEB-INF/include/header.jsp" />
        </header>

        <div class="container">

            <table id="example" class="table table-success table-striped tamanio display mt-3" >
                <h1 class="centrado">Lista de Ordenes de Servicio</h1>
                <thead>
                    <tr class="centrado">
                        <th>Orden</th>
                        <th>Solicitud</th>
                        <th>Producto</th>
                        <th>Estado</th>
                        <th>actualizacion</th>
                        <th>identificacion</th>
                        <th>Nombre </th>
                        <th>Telefono </th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="servicio" items="${listaServicio}">
                        <tr>
                            <th><c:out value="${servicio.idOrden}" /></th>
                            <td><c:out value="${servicio.fechaSolicitud}" /></td>
                            <td><c:out value="${servicio.electro.electro}" /></td>	
                            <td><c:out value="${servicio.electro.estado}" /></td>
                            <td><c:out value="${servicio.electro.fechaUpdate}" /></td>
                            <td><c:out value="${servicio.cliente.rut}" /></td>
                            <td><c:out value="${servicio.cliente.nomCliente}" /></td>
                            <td><c:out value="${servicio.cliente.telefono}" /></td>

                            <td>
                                <a href="/ServicioTecnico/ControllerCliente?accion=edit&amp;id=${servicio.idOrden}">Editar</a> <%-- contextPath en este caso es /cft-web --%>
                            </td>
                        </tr>
                    </c:forEach>			
                </tbody>
            </table>
            <script>
                $(document).ready(function () {
                    $('#example').DataTable();
                });   
             
            </script>

        </div>

    </body>
</html>
