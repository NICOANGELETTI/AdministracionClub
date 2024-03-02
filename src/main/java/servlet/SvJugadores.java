
package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;
import logica.Jugador;


@WebServlet(name = "SvJugadores", urlPatterns = {"/SvJugadores"})
public class SvJugadores extends HttpServlet {

    
        ControladoraLogica control = new ControladoraLogica();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");


    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        List<Jugador> listaJugadores = new ArrayList<>();
        
        listaJugadores = control.traerJugadores();
        
        HttpSession sesion = request.getSession(); 
        sesion.setAttribute("listaJugadores", listaJugadores);
        response.sendRedirect("jugadores.jsp");
        
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
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
        
        
        control.crearJugador(nombre, fecha, nacionalidad, posicion, estado);
        response.sendRedirect("SvJugadores");
    }
    
    
   

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
