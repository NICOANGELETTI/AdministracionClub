
package logica;

import java.util.ArrayList;
import java.util.Date;
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

    
    // Partidos
    
    public List<Partido> traerPartidos(){
        return controlPersis.traerPartidos();
    }
    
    
    public void crearPartido(Date fecha,String rival,String lugar,String estadio , String arbitro,boolean estadoPartido){
        Partido partido = new Partido();
        partido.setFecha(fecha);
        partido.setRival(rival);
        partido.setLugar(lugar);
        partido.setEstadio(estadio);
        partido.setArbitro(arbitro);
   
        controlPersis.crearPartido(partido);
    }
    
    public void eliminarPartido(int idPartido){
        controlPersis.eliminarPartido(idPartido);
    }
    
      public Partido traerPartido(int idPartido){
       return  controlPersis.traerPartido(idPartido);
    }
    
      
      
      public void actualizarEstado(int idPartido , boolean estadoNuevo){
        Partido partido = controlPersis.traerPartido(idPartido);
        partido.setEstadoPartido(estadoNuevo);
        controlPersis.actualizarEstado(idPartido , estadoNuevo);
        
        
        
        
        
    }
      
    //Resultados
    
    public void crearResultado(int idResultado, String nombreEquipoL, String nombreEquipoV, int golesConvertidos, int golesRecibidos, int tarjetasAmarillas_recibidas, int tarjetasRojas_recibidas, int tarjetasAmarillas_provocadas, int tarjetasRojas_provocadas, int penalesConvertidos, int penalesErrados, int penalesAtajados, int penalesRecibidos, Partido partido){
        Resultado resultado = new Resultado();
        resultado.setNombreEquipoL(nombreEquipoL);
        resultado.setNombreEquipoV(nombreEquipoV);
        resultado.setGolesConvertidos(golesConvertidos);
        resultado.setGolesRecibidos(golesRecibidos);
        resultado.setTarjetasAmarillas_recibidas(tarjetasAmarillas_recibidas);
        resultado.setTarjetasRojas_recibidas(tarjetasRojas_recibidas);
        resultado.setTarjetasAmarillas_provocadas(tarjetasAmarillas_provocadas);
        resultado.setTarjetasRojas_provocadas(tarjetasRojas_provocadas);
        resultado.setPenalesConvertidos(penalesConvertidos);
        resultado.setPenalesErrados(penalesErrados);
        resultado.setPenalesAtajados(penalesAtajados);
        resultado.setPenalesRecibidos(penalesRecibidos);

        resultado.setPartido(partido);
        
        controlPersis.crearResultado(resultado);
        
    }
    
    
    //Resultado
    
    public List<Resultado> traerResultados(){
       return controlPersis.traerResultados();
        
    }
    
    public Resultado traerResultado(int idResultado){
        return controlPersis.traerResultado(idResultado);
    }
    
    public void eliminarResultado(int idResultado){
        
        controlPersis.eliminarResultado(idResultado);
        
        
    }
    
    
  //Jugadores
    
    public void crearJugador(String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado , boolean vendido){
        Jugador jugador = new Jugador();
        jugador.setNombre(nombre);
        jugador.setFecha_nac(fecha_nac);
        jugador.setNacionalidad(nacionalidad);
        jugador.setPosicion(posicion);
        jugador.setEstado(estado);
        jugador.setVendido(vendido);
        controlPersis.crearJugador(jugador);
        
        
    }
    
    
    
    public List<Jugador> traerJugadores(){
    return   controlPersis.traerJugadores();
    }
    
    public Jugador traerJugador(int idJugador){
        return controlPersis.traerJugador(idJugador);  
        
    }
    
    public void eliminarJugador(int idJugador){
        controlPersis.eliminarJugador(idJugador);
    }
    
    
   public void editarJugador(Jugador jugador) {

        controlPersis.editarJugador(jugador);

    }


//Goleador
   
   
   public void crearGoleador(int goles, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado,boolean vendido){
       
       Goleador goleador = new Goleador();
       goleador.setNombre(nombre);
       goleador.setGoles(goles);
       goleador.setFecha_nac(fecha_nac);
       goleador.setNacionalidad(nacionalidad);
       goleador.setPosicion(posicion);
       goleador.setEstado(estado);
       goleador.setVendido(vendido);
       
       controlPersis.crearGoleador(goleador);
       
       
       
   }
   
   public List<Goleador> traerGoleadores(){
       
       return controlPersis.traerGoleadores();
       
       
   }
   
   
   
   public void eliminarGoleador(int idGoleador){
       controlPersis.eliminarGoleador(idGoleador);
       
       
       
   }
   
   public Goleador traerGoleador(int idGoleador){
       
       return controlPersis.traerGoleador(idGoleador);
       
   }
   
      public void editarGoleador(Goleador goleador) {

        controlPersis.editarGoleador(goleador);

    }
   
       
   
   //Asistidores
   
   public void crearAsistidor(int asistencias, String nombre, Date fecha_nac, String nacionalidad, String posicion, String estado,boolean vendido) {

        Asistidor asistidor = new Asistidor();
        asistidor.setAsistencias(asistencias);
        asistidor.setNombre(nombre);
        asistidor.setFecha_nac(fecha_nac);
        asistidor.setNacionalidad(nacionalidad);
        asistidor.setPosicion(posicion);
        asistidor.setEstado(estado);
        asistidor.setVendido(vendido);

        controlPersis.crearAsistidor(asistidor);
   
   
   }
   
   
   public List<Asistidor> traerAsistidores(){
    return controlPersis.traerAsistidores();
    
}
   
   
   public void eliminarAsistidor(int idAsistidor){
       controlPersis.eliminarAsistidor(idAsistidor);
   }


   //Presupuesto
   
   public void crearPresupuesto(int monto, String tipo_transaccion, Jugador jugadorOne){
       Presupuesto presupuesto = new Presupuesto();
      
       presupuesto.setMonto(monto);
       presupuesto.setTipo_transaccion(tipo_transaccion);
       presupuesto.setJugadorOne(jugadorOne);
       
       controlPersis.crearPresupuesto(presupuesto);
       
       
   }
   
   
   public void eliminarPresupuesto(int idPresupuesto){
       
       controlPersis.eliminarPresupuesto(idPresupuesto);
       
   }
       
       public List<Presupuesto> traerPresupuestos(){
           return controlPersis.traerPresupuestos();
           
       }
       
       
   
public int calcularPresupuestoTotal(){
    
    int montoTotal =0; 
    
    List<Presupuesto> listaPresupuesto = this.traerPresupuestos();
    
    for(Presupuesto presupuesto : listaPresupuesto){
       int montoPresupuesto = presupuesto.getMonto();
      if(presupuesto.getTipo_transaccion().equals("Egreso")){
          montoTotal -= montoPresupuesto; 
      }else{
          montoTotal += montoPresupuesto; 
          
      }
      
    }
    
     return montoTotal;
    
}
   
}
