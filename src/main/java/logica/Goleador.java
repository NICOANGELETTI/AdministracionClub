
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;

@Entity
public class Goleador extends Jugador  implements Serializable{
    
    
    private int goles;

    public Goleador() {
    }

    
    
    
    public Goleador(int goles) {
        this.goles = goles;
    }

    public Goleador(int goles, int idJugador, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado) {
        super(idJugador, nombre, fecha_nac, nacionalidad, posicion, estado);
        this.goles = goles;
    }

    public Goleador(int goles, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado) {
        super(nombre, fecha_nac, nacionalidad, posicion, estado);
        this.goles = goles;
    }

    public int getGoles() {
        return goles;
    }

    public void setGoles(int goles) {
        this.goles = goles;
    }
    
    
}
