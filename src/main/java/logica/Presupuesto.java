
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
public class Presupuesto implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPresupuesto;
    private String jugador; 
    private int monto; 
    private String tipo_transaccion;

    @OneToOne
    private Jugador jugadorOne;
    
    public Presupuesto() {
    }

    public Presupuesto(String jugador, int monto, String tipo_transaccion, Jugador jugadorOne) {
        this.jugador = jugador;
        this.monto = monto;
        this.tipo_transaccion = tipo_transaccion;
        this.jugadorOne = jugadorOne;
    }

    public Presupuesto(int idPresupuesto, String jugador, int monto, String tipo_transaccion, Jugador jugadorOne) {
        this.idPresupuesto = idPresupuesto;
        this.jugador = jugador;
        this.monto = monto;
        this.tipo_transaccion = tipo_transaccion;
        this.jugadorOne = jugadorOne;
    }

  
    
    
    public Jugador getJugadorOne() {
        return jugadorOne;
    }

    public void setJugadorOne(Jugador jugadorOne) {
        this.jugadorOne = jugadorOne;
    }

    
    
    public int getIdPresupuesto() {
        return idPresupuesto;
    }

    public void setIdPresupuesto(int idPresupuesto) {
        this.idPresupuesto = idPresupuesto;
    }

    
    public String getJugador() {
        return jugador;
    }

    
    public void setJugador(String jugador) {
        this.jugador = jugador;
    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    public String getTipo_transaccion() {
        return tipo_transaccion;
    }

    public void setTipo_transaccion(String tipo_transaccion) {
        this.tipo_transaccion = tipo_transaccion;
    }
    
    
    
}
