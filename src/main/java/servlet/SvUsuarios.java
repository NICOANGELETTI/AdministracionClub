
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;


@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {

    
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
        
        
        String responsable = request.getParameter("responsable");
        String nombreUsuario = request.getParameter("nombreUsuario");
        String password = request.getParameter("password");
       
        String mensaje = "Se ha creado con exito el usuario";
         control.crearUsuario(responsable,nombreUsuario , password);
        response.sendRedirect("login.jsp");
        HttpSession sesion = request.getSession();
        sesion.setAttribute("mensaje", mensaje);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
