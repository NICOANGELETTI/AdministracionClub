
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;

@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

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
        
        String nombreUsuario = request.getParameter("nombreUsuario");
        String password = request.getParameter("password");
        
        boolean ingreso = false; 
        ingreso = control.validarIngreso(nombreUsuario, password);
        
        
        if(ingreso == true){
            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("nombreUsuario", nombreUsuario);
            sesion.setAttribute("mensajeAlerta", "Bienvenidos a Administracion Futbol");
            response.sendRedirect("index.jsp");
            
        }else{
            response.sendRedirect("loginError.jsp");
        }
        
        
        
        
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
