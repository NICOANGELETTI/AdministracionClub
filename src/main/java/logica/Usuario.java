
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Usuario implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idUsuario;
    private String responsableClub;
    private String nombreUsuario;
    private String password;

    
    public Usuario() {
    }

    public Usuario(int idUsuario, String responsableClub, String nombreUsuario, String password) {
        this.idUsuario = idUsuario;
        this.responsableClub = responsableClub;
        this.nombreUsuario = nombreUsuario;
        this.password = password;
    }

    public Usuario(String responsableClub, String nombreUsuario, String password) {
        this.responsableClub = responsableClub;
        this.nombreUsuario = nombreUsuario;
        this.password = password;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getResponsableClub() {
        return responsableClub;
    }

    public void setResponsableClub(String responsableClub) {
        this.responsableClub = responsableClub;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
  
  
  
}
