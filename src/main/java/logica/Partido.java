
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Partido implements Serializable {
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPartido; 
    @Temporal(TemporalType.DATE)
    private Date fecha;
    private String rival;
    private String lugar;
    private String estadio;
    private String arbitro;
    private boolean estadoPartido;
    
   

    public Partido() {
    }

    public Partido(int idPartido, Date fecha, String rival, String lugar, String estadio, String arbitro, boolean estadoPartido) {
        this.idPartido = idPartido;
        this.fecha = fecha;
        this.rival = rival;
        this.lugar = lugar;
        this.estadio = estadio;
        this.arbitro = arbitro;
        this.estadoPartido = estadoPartido;
    }

    public Partido(Date fecha, String rival, String lugar, String estadio, String arbitro, boolean estadoPartido) {
        this.fecha = fecha;
        this.rival = rival;
        this.lugar = lugar;
        this.estadio = estadio;
        this.arbitro = arbitro;
        this.estadoPartido = estadoPartido;
       
    }

    public int getIdPartido() {
        return idPartido;
    }

    public void setIdPartido(int idPartido) {
        this.idPartido = idPartido;
    }

    
    
    
    
    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getRival() {
        return rival;
    }

    public void setRival(String rival) {
        this.rival = rival;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getEstadio() {
        return estadio;
    }

    public void setEstadio(String estadio) {
        this.estadio = estadio;
    }

    public String getArbitro() {
        return arbitro;
    }

    public void setArbitro(String arbitro) {
        this.arbitro = arbitro;
    }

    public boolean isEstadoPartido() {
        return estadoPartido;
    }

    public void setEstadoPartido(boolean estadoPartido) {
        this.estadoPartido = estadoPartido;
    }



 
    
    
    
}
