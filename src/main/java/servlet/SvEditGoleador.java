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
 

            

        
 
    }

     @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
     
      // Obtener los nuevos goles anotados desde los parámetros de la solicitud
      int idGoleador = Integer.parseInt(request.getParameter("idEdit"));
      int golesAnotados = Integer.parseInt(request.getParameter("golesGoleador"));
      Goleador goleadorEdit = control.traerGoleador(idGoleador);
      

   
        

        // Establecer los nuevos goles anotados en el objeto Goleador
        goleadorEdit.setGoles(golesAnotados);
        
        // Actualizar el goleador en la base de datos o en tu lógica de negocio
        control.editarJugador(goleadorEdit);
  
    // Redirigir a la página de estadísticas o a donde desees después de editar el goleador
    response.sendRedirect("SvEstadisticas"); // Reemplaza "estadisticas.jsp" con tu página de destino
}

   
}


  
