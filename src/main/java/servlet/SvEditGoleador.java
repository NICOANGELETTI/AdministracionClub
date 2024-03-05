
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;
import logica.Goleador;


@WebServlet(name = "SvEditGoleador", urlPatterns = {"/SvEditGoleador"})
public class SvEditGoleador extends HttpServlet {

    
    
            ControladoraLogica control = new ControladoraLogica();

        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
              int idGoleador = Integer.parseInt(request.getParameter("idEdit"));
       
       Goleador goleadorEdit = control.traerGoleador(idGoleador);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("goleadorEdit", goleadorEdit);
       response.sendRedirect("SvGoleadores");
        
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int golesAnotados = Integer.parseInt( request.getParameter("golesGoleador"));
               
        Goleador goleador = (Goleador) request.getSession().getAttribute("goleadorEdit");
        
        goleador.setGoles(golesAnotados);
        
        control.editarGoleador(goleador);
        
    
        response.sendRedirect("SvGoleador");
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
