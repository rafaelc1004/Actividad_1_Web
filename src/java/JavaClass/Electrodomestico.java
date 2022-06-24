
package JavaClass;

import java.time.LocalDate;

public class Electrodomestico {

    private String electro;
    private String estado;
    private LocalDate fechaUpdate;

    public Electrodomestico(String electro, String estado, LocalDate fechaUpdate) {

        this.electro = electro;
        this.estado = estado;
        this.fechaUpdate = fechaUpdate;
    }

    public String getElectro() {
        return electro;
    }

    public void setElectro(String electro) {
        this.electro = electro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public LocalDate getFechaUpdate() {
        return fechaUpdate;
    }

    public void setFechaUpdate(LocalDate fechaUpdate) {
        this.fechaUpdate = fechaUpdate;
    }
 
}
