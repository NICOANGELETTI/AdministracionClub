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
    
     // Obtener el id del goleador a editar desde los parámetros de la solicitud
    int idEdit = Integer.parseInt(request.getParameter("idEdit"));

    // Buscar el goleador correspondiente en tu lógica de negocio
    Goleador goleadorEdit = control.traerGoleador(idEdit);

    // Guardar el goleador en la sesión para acceder a él más tarde
    HttpSession sesion = request.getSession();
    sesion.setAttribute("goleadorEdit", goleadorEdit);
    
    // Redirigir a la página de edición del goleador
    response.sendRedirect("estadisticas.jsp"); // Reemplaza "editarGoleador.jsp" con tu página de edición

}


            @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
     

    // Obtener los nuevos goles anotados desde los parámetros de la solicitud
        int golesAnotados = Integer.parseInt(request.getParameter("golesGoleador"));
    
    
    // Obtener el goleador editado desde la sesión
    Goleador goleadorEdit = (Goleador) request.getSession().getAttribute("goleadorEdit");
    
    // Verificar si el goleador editado no es nulo
  
       
        
        // Establecer los nuevos goles anotados en el objeto Goleador
        goleadorEdit.setGoles(golesAnotados);
        
        // Actualizar el goleador en la base de datos o en tu lógica de negocio
        control.editarGoleador(goleadorEdit);
  
    // Redirigir a la página de estadísticas o a donde desees después de editar el goleador
    response.sendRedirect("SvEstadisticas"); // Reemplaza "estadisticas.jsp" con tu página de destino
}

   
}


  
