
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
import logica.Partido;


@WebServlet(name = "SvPartidos", urlPatterns = {"/SvPartidos"})
public class SvPartidos extends HttpServlet {

 
    
        ControladoraLogica control = new ControladoraLogica();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
   
        
       
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        List<Partido> listaPartidos = new ArrayList<>();
        listaPartidos = control.traerPartidos();
        
        HttpSession sesion = request.getSession();
        
        sesion.setAttribute("listaPartidos", listaPartidos);
        
    
        
        response.sendRedirect("partidos.jsp");
        
        
        
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        // Obteniendo el valor del parámetro "fecha" de la solicitud
        String fechaString = request.getParameter("fecha");

// Creando un objeto SimpleDateFormat para el formato de fecha deseado
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd-MM-yyyy"); // Aquí debes especificar el formato en el que se encuentra la fecha en el parámetro

        Date fecha = null;
        try {
            // Parseando la cadena de fecha al objeto Date
            fecha = formatoFecha.parse(fechaString);
        } catch (Exception e) {
            // Manejo de errores si la conversión falla
            e.printStackTrace(); // O manejar el error de alguna otra manera
        }

        
        
        String rival = request.getParameter("rival");

        String lugar = request.getParameter("lugar");

        String estadio = request.getParameter("estadio");

        String arbitro = request.getParameter("arbitro");

        
        boolean estadoPartido = false; 
        
        control.crearPartido(fecha, rival, lugar, estadio, arbitro,estadoPartido);
        
        response.sendRedirect("SvPartidos");
            
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
