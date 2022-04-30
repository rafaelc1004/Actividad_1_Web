
package JavaClass;

import java.time.LocalDate;

public class SolicitudReparacion {
    
    private int numSolicitud;
    private LocalDate fechaSolicitud;
    private String estadoServicio;
    private LocalDate dateUpdate;

    public SolicitudReparacion(int numSolicitud, LocalDate fechaSolicitud, String estadoServicio, LocalDate dateUpdate) {
        this.numSolicitud = numSolicitud;
        this.fechaSolicitud = fechaSolicitud;
        this.estadoServicio = estadoServicio;
        this.dateUpdate = dateUpdate;
    }

    public int getNumSolicitud() {
        return numSolicitud;
    }

    public void setNumSolicitud(int numSolicitud) {
        this.numSolicitud = numSolicitud;
    }

    public LocalDate getFechaSolicitud() {
        return fechaSolicitud;
    }

    public void setFechaSolicitud(LocalDate fechaSolicitud) {
        this.fechaSolicitud = fechaSolicitud;
    }

    public String getEstadoServicio() {
        return estadoServicio;
    }

    public void setEstadoServicio(String estadoServicio) {
        this.estadoServicio = estadoServicio;
    }

    public LocalDate getDateUpdate() {
        return dateUpdate;
    }

    public void setDateUpdate(LocalDate dateUpdate) {
        this.dateUpdate = dateUpdate;
    }
    
    
    
}
