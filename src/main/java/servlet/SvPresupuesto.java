
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
import logica.ControladoraLogica;
import logica.Jugador;
import logica.Presupuesto;

@WebServlet(name = "SvPresupuesto", urlPatterns = {"/SvPresupuesto"})
public class SvPresupuesto extends HttpServlet {

    
    
    
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
    
        int idJugadorEgreso =  Integer.parseInt(request.getParameter("idJugadorEgreso"));
              
        int montoEgreso = Integer.parseInt(request.getParameter("montoEgreso"));
        
        String operacionEgreso = request.getParameter("tipoOperacion");
        
        Jugador jugador = control.traerJugador(idJugadorEgreso);
        
        
       
        
         
        
       // Restar el monto de la transacción de egreso al monto total
    int montoTotal = (Integer) request.getSession().getAttribute("montoTotal");
    montoTotal -= montoEgreso;  HttpSession sesion = request.getSession();
            sesion.setAttribute("montoTotal", montoTotal);
        
        
        
        
        control.crearPresupuesto(montoEgreso, operacionEgreso, jugador);
        
        
        response.sendRedirect("presupuesto.jsp");
        
        
    
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
