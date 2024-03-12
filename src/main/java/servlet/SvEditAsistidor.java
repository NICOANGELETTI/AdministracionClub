
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Asistidor;
import logica.ControladoraLogica;


@WebServlet(name = "SvEditAsistidor", urlPatterns = {"/SvEditAsistidor"})
public class SvEditAsistidor extends HttpServlet {

  
    
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
        
        
        int idAsistidor = Integer.parseInt(request.getParameter("idAsistidor"));
        int asistencias = Integer.parseInt(request.getParameter("asistenciasAsistidor"));
        
        
        Asistidor asistidorEdit = control.traerAsitidor(idAsistidor);
        
        
       asistidorEdit.setAsistencias(asistencias);
       
       control.editarAsistidor(asistidorEdit);
       
       response.sendRedirect("SvEstadisticas");
        
        
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}