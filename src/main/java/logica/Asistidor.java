
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;



@Entity
public class Asistidor extends Jugador  implements Serializable{
    
    private int asistencias ; 

    public Asistidor() {
    }

    public Asistidor(int asistencias) {
        this.asistencias = asistencias;
    }

    public Asistidor(int asistencias, int idJugador, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado,boolean vendido) {
        super(idJugador, nombre, fecha_nac, nacionalidad, posicion, estado,vendido);
        this.asistencias = asistencias;
    }

    public Asistidor(int asistencias, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado,boolean vendido) {
        super(nombre, fecha_nac, nacionalidad, posicion, estado,vendido);
        this.asistencias = asistencias;
    }

    public int getAsistencias() {
        return asistencias;
    }

    public void setAsistencias(int asistencias) {
        this.asistencias = asistencias;
    }
    
    
    
}
