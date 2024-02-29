
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class Estadistica implements Serializable {
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idEstadistica;
    private String goleador; 
    private String asistidor; 
    @OneToOne
    private Resultado resultado;

    
    
    
    public Estadistica() {
    }

    public Estadistica(String goleador, String asistidor) {
        this.goleador = goleador;
        this.asistidor = asistidor;
    }

    public Estadistica(int idEstadistica, String goleador, String asistidor, Resultado resultado) {
        this.idEstadistica = idEstadistica;
        this.goleador = goleador;
        this.asistidor = asistidor;
        this.resultado = resultado;
    }

    public Resultado getResultado() {
        return resultado;
    }

    public void setResultado(Resultado resultado) {
        this.resultado = resultado;
    }

    public int getIdEstadistica() {
        return idEstadistica;
    }

    public void setIdEstadistica(int idEstadistica) {
        this.idEstadistica = idEstadistica;
    }

    
    public String getGoleador() {
        return goleador;
    }

    public void setGoleador(String goleador) {
        this.goleador = goleador;
    }

    public String getAsistidor() {
        return asistidor;
    }

    public void setAsistidor(String asistidor) {
        this.asistidor = asistidor;
    }
   
    
    
    
    
}
