
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.*;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {

    EstadisticaJpaController estadisticaJPA = new EstadisticaJpaController();
    JugadorJpaController jugadorJPA = new JugadorJpaController();
    PartidoJpaController partidoJPA = new PartidoJpaController();
    PresupuestoJpaController presupuestoJPA = new PresupuestoJpaController();
    ResultadoJpaController resultadoJPA = new ResultadoJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();

    public ControladoraPersistencia() {
    }


    public void crearUsuario(Usuario usu){
        usuarioJPA.create(usu);
    }

    public List<Usuario> traerUsuarios() {
        return usuarioJPA.findUsuarioEntities();
    }

    public Usuario traerUsuario(int idUsuario) {
        return usuarioJPA.findUsuario(idUsuario);
    }

    public void eliminarUsuario(int idUsuario) {
        try {
            usuarioJPA.destroy(idUsuario);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void editarUsuario(Usuario usu) {
        try {
            usuarioJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
   
    
    
    
    
}
