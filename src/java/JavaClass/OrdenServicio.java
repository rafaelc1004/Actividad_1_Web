
package JavaClass;

import java.time.LocalDate;

public class OrdenServicio {
    
    public static long idOrdenAux;
    private long idOrden;
    
    private LocalDate fechaSolicitud;
    private Cliente cliente;
    private Electrodomestico electro;

    public OrdenServicio() {
   
    }

    public OrdenServicio(LocalDate fechaSolicitud, Cliente cliente, Electrodomestico electro) {
        this.idOrden = contadorId();
        this.fechaSolicitud = fechaSolicitud;
        this.cliente = cliente;
        this.electro = electro;
    }
    
    private static long contadorId(){
        idOrdenAux ++;
        return idOrdenAux;
    }

    public long getIdOrden() {
        return idOrden;
    }

    public void setIdOrden(long idOrden) {
        this.idOrden = idOrden;
    }

    public LocalDate getFechaSolicitud() {
        return fechaSolicitud;
    }

    public void setFechaSolicitud(LocalDate fechaSolicitud) {
        this.fechaSolicitud = fechaSolicitud;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Electrodomestico getElectro() {
        return electro;
    }

    public void setElectro(Electrodomestico electro) {
        this.electro = electro;
    }

}
