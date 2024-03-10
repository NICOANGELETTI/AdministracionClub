
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.ControladoraLogica;


@WebServlet(name = "SvElimPartidos", urlPatterns = {"/SvElimPartidos"})
public class SvElimPartidos extends HttpServlet {

 
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
        
        int idPartido = Integer.parseInt(request.getParameter("id"));
      
       control.eliminarResultado(idPartido);
       control.eliminarPartido(idPartido);
       
       response.sendRedirect("SvPartidos");
        
        
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
