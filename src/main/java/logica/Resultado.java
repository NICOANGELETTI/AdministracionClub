
package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
public class Resultado implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idResultado;
    private String nombreEquipoL;
    private String nombreEquipoV;
    private int golesConvertidos;
    private int golesRecibidos;
    private int tarjetasAmarillas_recibidas;
    private int tarjetasRojas_recibidas;
    private int tarjetasAmarillas_provocadas;
    private int tarjetasRojas_provocadas;
    private int penalesConvertidos;
    private int penalesErrados;
    private int penalesAtajados;
    private int penalesRecibidos;
    private boolean miEquipoLocal;  

    
    //Anotacion para borrar en cascada y no tener problemas de consistencia entre resultado y partido.
     @OneToOne(cascade = CascadeType.REMOVE)
    private Partido partido;
  
    public Resultado() {
    }

    public Resultado(String nombreEquipoL, String nombreEquipoV, int golesConvertidos, int golesRecibidos, int tarjetasAmarillas_recibidas, int tarjetasRojas_recibidas, int tarjetasAmarillas_provocadas, int tarjetasRojas_provocadas, int penalesConvertidos, int penalesErrados, int penalesAtajados, int penalesRecibidos, boolean miEquipoLocal, Partido partido) {
        this.nombreEquipoL = nombreEquipoL;
        this.nombreEquipoV = nombreEquipoV;
        this.golesConvertidos = golesConvertidos;
        this.golesRecibidos = golesRecibidos;
        this.tarjetasAmarillas_recibidas = tarjetasAmarillas_recibidas;
        this.tarjetasRojas_recibidas = tarjetasRojas_recibidas;
        this.tarjetasAmarillas_provocadas = tarjetasAmarillas_provocadas;
        this.tarjetasRojas_provocadas = tarjetasRojas_provocadas;
        this.penalesConvertidos = penalesConvertidos;
        this.penalesErrados = penalesErrados;
        this.penalesAtajados = penalesAtajados;
        this.penalesRecibidos = penalesRecibidos;
        this.miEquipoLocal = miEquipoLocal;
        this.partido = partido;
    }

    public Resultado(int idResultado, String nombreEquipoL, String nombreEquipoV, int golesConvertidos, int golesRecibidos, int tarjetasAmarillas_recibidas, int tarjetasRojas_recibidas, int tarjetasAmarillas_provocadas, int tarjetasRojas_provocadas, int penalesConvertidos, int penalesErrados, int penalesAtajados, int penalesRecibidos, boolean miEquipoLocal, Partido partido) {
        this.idResultado = idResultado;
        this.nombreEquipoL = nombreEquipoL;
        this.nombreEquipoV = nombreEquipoV;
        this.golesConvertidos = golesConvertidos;
        this.golesRecibidos = golesRecibidos;
        this.tarjetasAmarillas_recibidas = tarjetasAmarillas_recibidas;
        this.tarjetasRojas_recibidas = tarjetasRojas_recibidas;
        this.tarjetasAmarillas_provocadas = tarjetasAmarillas_provocadas;
        this.tarjetasRojas_provocadas = tarjetasRojas_provocadas;
        this.penalesConvertidos = penalesConvertidos;
        this.penalesErrados = penalesErrados;
        this.penalesAtajados = penalesAtajados;
        this.penalesRecibidos = penalesRecibidos;
        this.miEquipoLocal = miEquipoLocal;
        this.partido = partido;
    }
    
    
    
    

    
    public boolean isMiEquipoLocal() {
        return miEquipoLocal;
    }

    public void setMiEquipoLocal(boolean miEquipoLocal) {
        this.miEquipoLocal = miEquipoLocal;
    }

    public int getGolesConvertidos() {
        return golesConvertidos;
    }

    public void setGolesConvertidos(int golesConvertidos) {
        this.golesConvertidos = golesConvertidos;
    }

    public int getGolesRecibidos() {
        return golesRecibidos;
    }

    public void setGolesRecibidos(int golesRecibidos) {
        this.golesRecibidos = golesRecibidos;
    }

  

   

    
    
    public int getPenalesConvertidos() {
        return penalesConvertidos;
    }

    public void setPenalesConvertidos(int penalesConvertidos) {
        this.penalesConvertidos = penalesConvertidos;
    }

    public int getPenalesErrados() {
        return penalesErrados;
    }

    public void setPenalesErrados(int penalesErrados) {
        this.penalesErrados = penalesErrados;
    }

    public int getPenalesAtajados() {
        return penalesAtajados;
    }

    public void setPenalesAtajados(int penalesAtajados) {
        this.penalesAtajados = penalesAtajados;
    }

    public int getPenalesRecibidos() {
        return penalesRecibidos;
    }

    public void setPenalesRecibidos(int penalesRecibidos) {
        this.penalesRecibidos = penalesRecibidos;
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


     
    //Metodos para Interfaz Estadistica
    
    
      public int getTotalGolesRecibidos(List<Resultado> resultados) {
        int totalGolesRecibidos = 0;
        for (Resultado resultado : resultados) {
            totalGolesRecibidos += resultado.getGolesRecibidos();
        }
        return totalGolesRecibidos;
    }
     
     
      
         public int getTotalGolesRealizados(List<Resultado> resultados) {
        int totalGolesRealizados = 0;
        for (Resultado resultado : resultados) {
            totalGolesRealizados += resultado.getGolesConvertidos();
        }
        return totalGolesRealizados;
    }
         
         
         
         
    public int getTotalTarjetasAmarillasRecibidas(List<Resultado> resultados) {
        int totalTarjetasAmarillasRecibidas = 0;
        for (Resultado resultado : resultados) {
            totalTarjetasAmarillasRecibidas += resultado.getTarjetasAmarillas_recibidas() ;
        }
        return totalTarjetasAmarillasRecibidas;
    }

    public int getTotalTarjetasRojasRecibidas(List<Resultado> resultados) {
        int totalTarjetasRojasRecibidas = 0;
        for (Resultado resultado : resultados) {
            totalTarjetasRojasRecibidas += resultado.getTarjetasRojas_recibidas();
       
    } return totalTarjetasRojasRecibidas;
    }
    
    public int getTotalTarjetasAmarillasProvocadas(List<Resultado> resultados){
        int totalTarjetasAmarillasProvocadas = 0; 
        
        for(Resultado resultado : resultados){
            totalTarjetasAmarillasProvocadas += resultado.getTarjetasAmarillas_provocadas();
            
            
        }
        return totalTarjetasAmarillasProvocadas; 
        
    }
    
       
    
    public int getTotalTarjetasRojasProvocadas(List<Resultado> resultados){
        int totalTarjetasRojasProvocadas = 0; 
        for(Resultado resultado : resultados){
            totalTarjetasRojasProvocadas += resultado.getTarjetasRojas_provocadas();
            
            
        }
        
        return totalTarjetasRojasProvocadas; 
  
    }
    
    
 public int getTotalPenalesConvertidos(List<Resultado> resultados){
     int totalPenalesConvertidos = 0 ;
     for(Resultado resultado : resultados){
         totalPenalesConvertidos += resultado.getTotalPenalesConvertidos(resultados);
       
     } return totalPenalesConvertidos; 
     
     
 }
    
 public int getTotalPenalesErrados(List<Resultado> resultados){
     int totalPenalesErrados = 0; 
     
     for(Resultado resultado : resultados){
         totalPenalesErrados += resultado.getTotalPenalesErrados(resultados);
     }
     
     return totalPenalesErrados; 
 }
    
 
 public int getTotalPenalesAtajados(List<Resultado> resultados){
     int totalPenalesAtajados = 0 ;
     
     for(Resultado resultado : resultados){
         totalPenalesAtajados = resultado.getTotalPenalesAtajados(resultados);
         
         
         
     }
     return totalPenalesAtajados ;
     
 }
 
 
 public int getTotalPenalesRecibidos(List<Resultado> resultados){
     
     int totalPenalesRecibidos = 0; 
     for(Resultado resultado : resultados){
         totalPenalesRecibidos += resultado.getTotalPenalesRecibidos(resultados);
         
     }
     return totalPenalesRecibidos ; 
     
 }
    
}
      

     
     

