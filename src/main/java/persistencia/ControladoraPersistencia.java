
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.*;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {

    JugadorJpaController jugadorJPA = new JugadorJpaController();
    PartidoJpaController partidoJPA = new PartidoJpaController();
    PresupuestoJpaController presupuestoJPA = new PresupuestoJpaController();
    ResultadoJpaController resultadoJPA = new ResultadoJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    GoleadorJpaController goleadorJPA = new GoleadorJpaController();
    AsistidorJpaController asistidorJPA = new AsistidorJpaController();

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

    //Partidos
    public List<Partido> traerPartidos() {

        return partidoJPA.findPartidoEntities();
    }

    public void crearPartido(Partido partido) {

        partidoJPA.create(partido);
    }

    public void eliminarPartido(int idPartido) {

        try {
            partidoJPA.destroy(idPartido);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
      public Partido traerPartido(int idPartido) {
        return partidoJPA.findPartido(idPartido);
      }
      
      
      
      //Resultados

    public void crearResultado(Resultado resultado) {
        resultadoJPA.create(resultado);
        
    }
   

    public void actualizarEstado(int idPartido, boolean estadoNuevo) {
    // Obtener el partido de la base de datos
    Partido partido = partidoJPA.findPartido(idPartido);
    
    // Verificar si el partido existe
    if (partido != null) {
        // Actualizar el estado del partido
        partido.setEstadoPartido(estadoNuevo);
        
        try {
            // Actualizar el partido en la base de datos
            partidoJPA.edit(partido);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    } else {
        // Manejo de error si el partido no existe
        System.out.println("No se encontró el partido con el ID: " + idPartido);
    }
}

    
    //Jugadores
    public void crearJugador(Jugador jugador) {
        
        jugadorJPA.create(jugador);
        
    }

    public List<Jugador> traerJugadores() {

        return jugadorJPA.findJugadorEntities();
    }

    public Jugador traerJugador(int idJugador) {

        return jugadorJPA.findJugador(idJugador);
    }

    public void eliminarJugador(int idJugador) {
        try {
            jugadorJPA.destroy(idJugador);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarJugador(Jugador jugador) {

        try {
            jugadorJPA.edit(jugador);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
        //Goleadores
    public void crearGoleador(Goleador goleador) {
        
        goleadorJPA.create(goleador);

    }

       public void eliminarGoleador(int idGoleador) {
        try {
            goleadorJPA.destroy(idGoleador);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

   public List<Goleador> traerGoleadores() {


        return goleadorJPA.findGoleadorEntities();
    }
  

   
    public Goleador traerGoleador(int idGoleador) {
        return  goleadorJPA.findGoleador(idGoleador);
    }
   

       public void editarGoleador(Goleador goleador) {
        try {
            goleadorJPA.edit(goleador);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
       }

    
    
    //Asistidores
    
    
    public void crearAsistidor(Asistidor asistidor) {

        asistidorJPA.create(asistidor);
        
    }

 

    public List<Asistidor> traerAsistidores() {

        return asistidorJPA.findAsistidorEntities();
        
    }

    public void eliminarAsistidor(int idAsistidor) {
        
        try {
            asistidorJPA.destroy(idAsistidor);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }

        }

    
    //Presupuesto
    public void crearPresupuesto(Presupuesto presupuesto) {

        presupuestoJPA.create(presupuesto);

    }

    public void eliminarPresupuesto(int idPresupuesto) {
        try {
            presupuestoJPA.destroy(idPresupuesto);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    
    public List<Presupuesto> traerPresupuestos() {
        
        return presupuestoJPA.findPresupuestoEntities();
       
    }

    
    
    

 
   

 
    
    
    
    
}
