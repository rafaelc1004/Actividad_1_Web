<%-- 
    Document   : form-servicio.jsp
    Created on : 22 jun 2022, 22:32:02
    Author     : Rafaelito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="JQuery/jquery3.6.0.min.js" type="text/javascript"></script>
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

    </style>

    <title>Formulario de ingreso de Orden</title>
</head>
<body>
    <div class="container">
        <div class=" row justify-content-center mb-3 mt-3">
            <div class="fondo card col-md-6 " >
                <h1 class="centrado">Registro de Orden</h1>
                <form  class="p-3 rounded needs-validation " id="formularioCreate" method="post" action="ControllerCliente">
                    <div class="mb-3">
                        <label for="txtRut" class="form-label">Rut:</label>
                        <input type="text" class="form-control" id="txtRut" placeholder="Ej. 12345678-k" name="txtRut">
                        <div id="errorRut" class="mensajeError">El Valor ingresado no es valido!</div>
                    </div>
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Nombres:</label>
                        <input type="text" class="form-control" id="txtNombre" placeholder="Ej. Juanito" name="txtNombre" onchange="onLimpiarEstilos('nombre')">
                        <div id="errorNombre" class="mensajeError">Nombre no puede estar vacio!</div>
                    </div><!-- comment -->
                    <div class="mb-3">
                        <label for="txtApellido" class="form-label">Apellidos:</label>
                        <input type="text" class="form-control" id="txtApellido" placeholder="Ej. Rojas Perez" name="txtApellido">
                        <div id="errorApellido" class="mensajeError">El Valor ingresado no es valido!</div>
                    </div>
                    <div class="mb-3">
                        <label for="txtDireccion" class="form-label">Direccion:</label>
                        <input type="text" class="form-control" id="txtDireccion" placeholder="Ej. australia #88" name="txtDireccion">
                        <div id="errorDireccion" class="mensajeError">El Valor ingresado no es valido!</div>
                    </div>    
                    <div class="mb-3">
                        <label for="txtTelefono" class="form-label">Telefono:</label>
                        <input type="text" class="form-control" id="txtTelefono" placeholder="Ej. 987654321" name="txtTelefono">
                        <div id="errorTelefono" class="mensajeError">El valor ingresado no es valido!</div>
                    </div>
                    <div class="mb-3">
                        <label for="txtElectro" class="form-label">Electrodomestico Defectuoso:</label>
                        <input type="text" class="form-control" id="txtElectro" placeholder="Ej. Lavadora" name="txtElectro">
                        <div id="errorElectro" class="mensajeError">El valor ingresado no es valido!</div>
                    </div>

                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input type="hidden" id="form" name="form" value="create"/>
                        <button class="btn btn-primary mb-3" type="submit">Send</button>

                    </div>
                </form>

                <a href="/ServicioTecnico/index.jsp">Volver al inicio</a>
            </div>

        </div>
        <script>
            $(function(){
                $('#formularioCreate').submit(function(ev){
                        
                    const rut = $("#txtRut");
                    const nombre = $("#txtNombre");
                    const apellido = $("#txtApellido");
                    const direccion = $("#txtDireccion");
                    const telefono = $("#txtTelefono");
                    const electro = $("#txtElectro");
                        
                    const eRut = $("#errorRut");
                    const eNombre = $("#errorNombre");
                    const eApellido = $("#errorApellido");
                    const eDireccion = $("#errorDireccion");
                    const eTelefono = $("#errorTelefono");
                    const eElectro = $("#errorElectro");
                        
                    const valorRut = rut.val();
                    const valorNombre = nombre.val();
                    const valorApellido = apellido.val();
                    const valorDireccion = direccion.val();
                    const valorTelefono = telefono.val();
                    const valorElectro = electro.val();
                         
                    if( valorRut == null || valorRut == ''){
                        ev.preventDefault();
                        eRut.addClass('mostrar');
                        rut.addClass("error form-control");
                    }
                        
                    if( valorNombre == null || valorNombre == ''){
                        ev.preventDefault();
                        eNombre.addClass('mostrar');
                        nombre.addClass("error form-control");
                    }
                        
                    if( valorApellido == null || valorApellido == ''){
                        ev.preventDefault();
                        eApellido.addClass('mostrar');
                        apellido.addClass("error form-control");
                    }
                        
                    if( valorDireccion == null || valorDireccion == ''){
                        ev.preventDefault();
                        eDireccion.addClass('mostrar');
                        direccion.addClass("error form-control");
                    }
                        
                    if( valorTelefono == null || valorTelefono == ''){
                        ev.preventDefault();
                        eTelefono.addClass('mostrar');
                        telefono.addClass("error form-control");
                    }
                        
                    if( valorElectro == null || valorElectro == ''){
                        ev.preventDefault();
                        eElectro.addClass('mostrar');
                        electro.addClass("error form-control");
                    }
                        
                    if(valorNombre.length > 0 && valorNombre != null && 
                       valorRut.length > 0 && valorRut!= null &&
                       valorApellido != null && valorApellido.length >0 &&
                       valorDireccion.length > 0 && valorDireccion != null &&
                       valorTelefono != null && valorTelefono.length > 0 &&
                       valorElectro.length > 0 && valorElectro != null){
                     
                    }
      
                });
                    
                $("#txtRut").change(function(){
                    const rut = $("#txtRut");
                    const eRut =$('#errorRut');
                    eRut.removeClass("mostrar");
                    rut.removeClass("error");

                });
                    
                $("#txtNombre").change(function(){
                    const nombre = $("#txtNombre");
                    const eNombre =$('#errorNombre');
                    eNombre.removeClass("mostrar");
                    nombre.removeClass("error");

                });
                    
                $("#txtApellido").change(function(){
                    const apellido = $("#txtApellido");
                    const eApellido =$('#errorApellido');
                    eApellido.removeClass("mostrar");
                    apellido.removeClass("error");

                });
                    
                $("#txtDireccion").change(function(){
                    const direccion = $("#txtDireccion");
                    const eDireccion =$('#errorDireccion');
                    eDireccion.removeClass("mostrar");
                    direccion.removeClass("error");

                });
                    
                $("#txtTelefono").change(function(){
                    const telefono = $("#txtTelefono");
                    const eTelefono =$('#errorTelefono');
                    eTelefono.removeClass("mostrar");
                    telefono.removeClass("error");

                });
                    
                $("#txtElectro").change(function(){
                    const electro = $("#txtElectro");
                    const eElectro =$('#errorElectro');
                    eElectro.removeClass("mostrar");
                    electro.removeClass("error");

                });
                    
               
                    
            });
                
        </script>

    </div>

</body>
</html>
