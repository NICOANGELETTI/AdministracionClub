
package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;
import logica.Partido;


@WebServlet(name = "SvResultados", urlPatterns = {"/SvResultados"})
public class SvResultados extends HttpServlet {


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
        
        String equipoLocal = request.getParameter("equipoLocal");
        String equipoVisitante = request.getParameter("equipoVisitante");
        int golesConvertidos = Integer.parseInt(request.getParameter("golesConvertidos"));
        int golesRecibidos = Integer.parseInt(request.getParameter("golesRecibidos"));
        int tarjetasAmarillasEqLocal = Integer.parseInt(request.getParameter("tarjetasAmarillasEqLocal"));
        int tarjetasRojasEqLocal = Integer.parseInt(request.getParameter("tarjetasRojasEqLocal"));
        int tarjetasAmarillasEqVisit = Integer.parseInt(request.getParameter("tarjetasAmarillasEqVisit"));
        int tarjetasRojasEqVisit = Integer.parseInt(request.getParameter("tarjetasRojasEqVisit"));
        int penalesConvertidos = Integer.parseInt(request.getParameter("penalesConvertidos"));
        int penalesErrados = Integer.parseInt(request.getParameter("penalesErrados"));
        int penalesRecibidos = Integer.parseInt(request.getParameter("penalesRecibidos"));
        int penalesAtajados = Integer.parseInt(request.getParameter("penalesAtajados"));
       
       int idPartido = Integer.parseInt(request.getParameter("idPartidoResultado"));
       
      Partido partido = control.traerPartido(idPartido);
      
    //Creo Resultado
control.crearResultado(idPartido, equipoLocal, equipoLocal, golesConvertidos, golesRecibidos, tarjetasAmarillasEqVisit, tarjetasRojasEqVisit, tarjetasAmarillasEqLocal, tarjetasRojasEqLocal, penalesConvertidos, penalesErrados, penalesAtajados, penalesRecibidos, partido);        // Actualizar el estado del partido en la base de datos
    control.actualizarEstado(idPartido, true);
    request.getSession().setAttribute("resultadoCargado", true);

       
       response.sendRedirect("SvPartidos");
       
     
       
       
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
