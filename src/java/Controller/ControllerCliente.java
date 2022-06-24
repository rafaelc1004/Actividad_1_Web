/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import JavaClass.Cliente;
import JavaClass.Electrodomestico;
import JavaClass.OrdenServicio;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafaelito
 */
public class ControllerCliente extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    private static Cliente cliente;
    private static Electrodomestico electrodomestico;
    private static OrdenServicio ordenServicio;
    private static List<OrdenServicio> listaOrdenes = new ArrayList<>();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        String vistaJSP = "";
        switch (accion) {
            case "form":
                vistaJSP = "/WEB-INF/jsp/vista-servicios/form-servicio.jsp";
                request.getRequestDispatcher(vistaJSP).forward(request, response);
                break;
            case "list":
                vistaJSP = "/WEB-INF/jsp/vista-servicios/list-servicio.jsp";
               
                    request.setAttribute("listaServicio", listaOrdenes);
                    request.getRequestDispatcher(vistaJSP).forward(request, response);
                
                
                break;
            case "edit":
                vistaJSP = "/WEB-INF/jsp/vista-servicios/edit-servicio.jsp";
                int idOrden = Integer.parseInt(request.getParameter("id"));
                for(OrdenServicio orden : listaOrdenes){
                    if(orden.getIdOrden()== idOrden){
                        request.setAttribute("orden", orden);
                        break;
                    }
                }
                request.getRequestDispatcher(vistaJSP).forward(request, response);
                break;
                
            default:
                response.sendError(404);
        }
        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
            {
        String vistaJSP = "";
        String opcion = "";
        
            opcion = request.getParameter("form");

        if(opcion.equalsIgnoreCase("create")){
            vistaJSP = "/index.jsp";
            
            String rut = request.getParameter("txtRut");
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String direccion = request.getParameter("txtDireccion");
            String telefono = request.getParameter("txtTelefono");
            String electro = request.getParameter("txtElectro");

            cliente = new Cliente(rut, nombre, apellido, direccion, telefono);
            electrodomestico = new Electrodomestico(electro, "Pendiente", LocalDate.now());
            ordenServicio = new OrdenServicio(LocalDate.now(), cliente, electrodomestico);
            listaOrdenes.add(ordenServicio);

            request.getRequestDispatcher(vistaJSP).forward(request, response);
        }else if(opcion.equalsIgnoreCase("edit")){
            
            vistaJSP ="/WEB-INF/jsp/vista-servicios/list-servicio.jsp";
            long id = Long.parseLong(request.getParameter("id"));
            String estado = request.getParameter("txtEstado");
            for(OrdenServicio orden : listaOrdenes){
                if(orden.getIdOrden()==id){
                    orden.getElectro().setEstado(estado);
                    orden.getElectro().setFechaUpdate(LocalDate.now());
                    break;
                }
            }
            request.setAttribute("listaServicio", listaOrdenes);
            request.getRequestDispatcher(vistaJSP).forward(request, response);
        }else{
            vistaJSP ="/WEB-INF/jsp/vista-cliente/vista-cliente.jsp";
            long idOrden = Long.parseLong(request.getParameter("txtBuscar"));
            for(OrdenServicio orden : listaOrdenes){
                if(orden.getIdOrden() == idOrden){
                    request.setAttribute("orden", orden);
                    break;
                }
            }
            
            request.getRequestDispatcher(vistaJSP).forward(request, response);
            
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
