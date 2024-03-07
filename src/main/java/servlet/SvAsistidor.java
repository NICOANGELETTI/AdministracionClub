
package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Asistidor;
import logica.ControladoraLogica;
import logica.Jugador;


@WebServlet(name = "SvAsistidor", urlPatterns = {"/SvAsistidor"})
public class SvAsistidor extends HttpServlet {

   
    
        ControladoraLogica control = new ControladoraLogica();
        
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
   
        
     
      
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         List<Asistidor> listaDeAsistidores = new ArrayList<>();
        listaDeAsistidores = control.traerAsistidores();

        HttpSession sesion = request.getSession();
        sesion.setAttribute("listaDeAsistidores", listaDeAsistidores);

        response.sendRedirect("estadisticas.jsp");

    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int idJugador = Integer.parseInt(request.getParameter("idJugador"));
        int asistencias = Integer.parseInt(request.getParameter("asistenciasRealizadas"));
        boolean vendido = false;
        
        Jugador jugador = control.traerJugador(idJugador);
        
        
        control.crearAsistidor(asistencias,jugador.getNombre(), jugador.getFecha_nac(), jugador.getNacionalidad(), jugador.getPosicion(), jugador.getEstado() , vendido);
      
       
         response.sendRedirect("SvAsistidor");
            
            
            
            
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
