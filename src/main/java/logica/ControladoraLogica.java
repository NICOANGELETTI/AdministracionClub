
package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;


public class ControladoraLogica {
 
    
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia(); 

    public ControladoraLogica() {
    }

    //Usuarios
    public void crearUsuario(String responsable , String nombreUsuario,String password){
        Usuario usu = new Usuario();
        usu.setNombreUsuario(nombreUsuario);
        usu.setResponsableClub(responsable);
        usu.setPassword(password);
        controlPersis.crearUsuario(usu);
    }

    
    public List<Usuario> traerUsuarios(){
        return controlPersis.traerUsuarios();
    }

    public Usuario traerUsuario(int idUsuario){
        return controlPersis.traerUsuario(idUsuario);
    }
    
    public void eliminarUsuario(int idUsuario){
        controlPersis.eliminarUsuario(idUsuario);
    }
    
    public void editarUsuario(Usuario usu){
        controlPersis.editarUsuario(usu);
    }
 
    //Validar Ingreso LOGIN
    public boolean validarIngreso(String nombreUsuario , String password){
        
        boolean ingreso = false ; 
        
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.traerUsuarios();
        
        for (Usuario usu : listaUsuarios) {
            if (usu.getNombreUsuario().equals(nombreUsuario)) {
                if (usu.getPassword().equals(password)) {

                    ingreso = true;

                } else {
                    ingreso = false;
                }
            }

        }
        return ingreso;

    }

    
    // Aca sigue
    
    
    
    
    
    
    
    
    
    
    
}
