
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Jugador implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idJugador;
    private String nombre;
    @Temporal(TemporalType.DATE)
    private Date fecha_nac;
    private String nacionalidad;
    private String posicion;
    private String estado;

 
    public Jugador() {
    }

    public Jugador(int idJugador, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado) {
        this.idJugador = idJugador;
        this.nombre = nombre;
        this.fecha_nac = fecha_nac;
        this.nacionalidad = nacionalidad;
        this.posicion = posicion;
        this.estado = estado;
       
    }

    
 
    

   

    public int getIdJugador() {
        return idJugador;
    }

    public void setIdJugador(int idJugador) {
        this.idJugador = idJugador;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getPosicion() {
        return posicion;
    }

    public void setPosicion(String posicion) {
        this.posicion = posicion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
 
 
 
 
 
 
    
}
