
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.ControladoraLogica;
import logica.Jugador;


@WebServlet(name = "SvCompraJugador", urlPatterns = {"/SvCompraJugador"})
public class SvCompraJugador extends HttpServlet {

        ControladoraLogica control = new ControladoraLogica();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
        }
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    
    //Ingreso
    
    
     // Obtener los parámetros del formulario para el presupuesto
    int monto = Integer.parseInt(request.getParameter("montoEgreso"));
    String tipoTransaccion = request.getParameter("tipoOperacion");

    // Obtener los parámetros del formulario para crear un nuevo jugador
    String nombre = request.getParameter("nombre");
 
    String nacionalidad = request.getParameter("nacionalidad");
    String posicion = request.getParameter("posicion");
    String estado = request.getParameter("estadoJugador");
     
        // Obteniendo el valor del parámetro "fecha" de la solicitud
      String fechaNacimientoString = request.getParameter("fechaNacimiento");

// Creando un objeto SimpleDateFormat para el formato de fecha deseado
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd-MM-yyyy"); // Aquí debes especificar el formato en el que se encuentra la fecha en el parámetro

        Date fecha = null;
        try {
            // Parseando la cadena de fecha al objeto Date
            fecha = formatoFecha.parse(fechaNacimientoString);
        } catch (Exception e) {
            // Manejo de errores si la conversión falla
            e.printStackTrace(); // O manejar el error de alguna otra manera
        }
        
        //Creamos nuevo jugador
       Jugador jugadorComprado = new Jugador();
        jugadorComprado.setNombre(nombre);
        jugadorComprado.setNacionalidad(nacionalidad);
        jugadorComprado.setFecha_nac(fecha);
        jugadorComprado.setPosicion(posicion);
        jugadorComprado.setEstado(estado);
        jugadorComprado.setVendido(false);
        
       
        
        // Crear un nuevo presupuesto con el nuevo jugador
        control.crearPresupuesto(monto, tipoTransaccion, jugadorComprado);
           
            

    response.sendRedirect("presupuesto.jsp");
    
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
