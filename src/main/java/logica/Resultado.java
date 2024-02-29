
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class Resultado implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idResultado;
    private String nombreEquipoL;
    private String nombreEquipoV;
    private int golesEquipoLocal;
    private int golesEquipoVisitante;
    private int tarjetasAmarillas_recibidas;
    private int tarjetasRojas_recibidas;
    private int tarjetasAmarillas_provocadas;
    private int tarjetasRojas_provocadas;
   
    
     @OneToOne
    private Partido partido;
  
    public Resultado() {
    }

    public Resultado(int idResultado, String nombreEquipoL, String nombreEquipoV, int golesEquipoLocal, int golesEquipoVisitante, int tarjetasAmarillas_recibidas, int tarjetasRojas_recibidas, int tarjetasAmarillas_provocadas, int tarjetasRojas_provocadas, Partido partido) {
        this.idResultado = idResultado;
        this.nombreEquipoL = nombreEquipoL;
        this.nombreEquipoV = nombreEquipoV;
        this.golesEquipoLocal = golesEquipoLocal;
        this.golesEquipoVisitante = golesEquipoVisitante;
        this.tarjetasAmarillas_recibidas = tarjetasAmarillas_recibidas;
        this.tarjetasRojas_recibidas = tarjetasRojas_recibidas;
        this.tarjetasAmarillas_provocadas = tarjetasAmarillas_provocadas;
        this.tarjetasRojas_provocadas = tarjetasRojas_provocadas;
        this.partido = partido;
    }

    public Partido getPartido() {
        return partido;
    }

    public void setPartido(Partido partido) {
        this.partido = partido;
    }

     
     
     
   

    public int getIdResultado() {
        return idResultado;
    }

    public void setIdResultado(int idResultado) {
        this.idResultado = idResultado;
    }

    
    
    public String getNombreEquipoL() {
        return nombreEquipoL;
    }

    public void setNombreEquipoL(String nombreEquipoL) {
        this.nombreEquipoL = nombreEquipoL;
    }

    public String getNombreEquipoV() {
        return nombreEquipoV;
    }

    public void setNombreEquipoV(String nombreEquipoV) {
        this.nombreEquipoV = nombreEquipoV;
    }

    public int getGolesEquipoLocal() {
        return golesEquipoLocal;
    }

    public void setGolesEquipoLocal(int golesEquipoLocal) {
        this.golesEquipoLocal = golesEquipoLocal;
    }

    public int getGolesEquipoVisitante() {
        return golesEquipoVisitante;
    }

    public void setGolesEquipoVisitante(int golesEquipoVisitante) {
        this.golesEquipoVisitante = golesEquipoVisitante;
    }

    public int getTarjetasAmarillas_recibidas() {
        return tarjetasAmarillas_recibidas;
    }

    public void setTarjetasAmarillas_recibidas(int tarjetasAmarillas_recibidas) {
        this.tarjetasAmarillas_recibidas = tarjetasAmarillas_recibidas;
    }

    public int getTarjetasRojas_recibidas() {
        return tarjetasRojas_recibidas;
    }

    public void setTarjetasRojas_recibidas(int tarjetasRojas_recibidas) {
        this.tarjetasRojas_recibidas = tarjetasRojas_recibidas;
    }

    public int getTarjetasAmarillas_provocadas() {
        return tarjetasAmarillas_provocadas;
    }

    public void setTarjetasAmarillas_provocadas(int tarjetasAmarillas_provocadas) {
        this.tarjetasAmarillas_provocadas = tarjetasAmarillas_provocadas;
    }

    public int getTarjetasRojas_provocadas() {
        return tarjetasRojas_provocadas;
    }

    public void setTarjetasRojas_provocadas(int tarjetasRojas_provocadas) {
        this.tarjetasRojas_provocadas = tarjetasRojas_provocadas;
    }


     
     
     
     
     
    
}
