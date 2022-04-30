
package JavaClass;

import java.util.ArrayList;
import java.util.List;

public class Clientes {
    
    private String rut;
    private String nombreCliente;
    private String direccionCliente;
    private String telefonoCliente;
    private Reparaciones reparacion;
    private List<SolicitudReparacion> listaReparacion;

    public Clientes(String rut, String nombreCliente, String direccionCliente, String telefonoCliente, Reparaciones reparacion) {
        this.rut = rut;
        this.nombreCliente = nombreCliente;
        this.direccionCliente = direccionCliente;
        this.telefonoCliente = telefonoCliente;
        this.reparacion = reparacion;
        this.listaReparacion = new ArrayList<>();
    }

    public List<SolicitudReparacion> getListaReparacion() {
        return listaReparacion;
    }

    public void setListaReparacion(List<SolicitudReparacion> listaReparacion) {
        this.listaReparacion = listaReparacion;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }

    public void setTelefonoCliente(String telefonoCliente) {
        this.telefonoCliente = telefonoCliente;
    }
    
    
    
}
