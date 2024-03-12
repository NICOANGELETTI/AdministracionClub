
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
import logica.Goleador;
import logica.Resultado;


@WebServlet(name = "SvEstadisticas", urlPatterns = {"/SvEstadisticas"})
public class SvEstadisticas extends HttpServlet {

        
   ControladoraLogica control = new ControladoraLogica();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    
        }
   
 @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    // Obtiene la lista de resultados
    List<Resultado> lista = control.traerResultados();
    
    
    
    
    // Inicializa las variables para las estadísticas
    int golesConvertidos = 0;
    int golesRecibidos = 0 ;
    int penalesAtajados = 0 ;
    int penalesRecibidos = 0 ; 
    int penalesConvertidos = 0;
    int penalesErrados = 0; 
    int tarjetasAmarillasProvocadas = 0; 
    int tarjetasAmarillasRecibidas  = 0;
    int tarjetasRojasProvocadas = 0; 
    int tarjetasRojasRecibidas = 0;
    
    
    int penalesTotalesPateados = 0; 
    int penalesTotalesRecibidos = 0;
    int tarjetasTotalProvocadas = 0;
    int tarjetasTotalRecibidas = 0;
    
    
    
    // Recorre la lista para calcular las estadísticas
    for(Resultado resultado : lista){
       golesConvertidos += resultado.getGolesConvertidos();
       golesRecibidos += resultado.getGolesRecibidos();
       penalesAtajados += resultado.getPenalesAtajados();
       penalesRecibidos += resultado.getPenalesRecibidos();
       penalesConvertidos += resultado.getPenalesConvertidos();
       penalesErrados += resultado.getPenalesErrados();
       tarjetasAmarillasProvocadas += resultado.getTarjetasAmarillas_provocadas();
       tarjetasAmarillasRecibidas += resultado.getTarjetasAmarillas_recibidas();
       tarjetasRojasProvocadas += resultado.getTarjetasRojas_provocadas();
       tarjetasRojasRecibidas += resultado.getTarjetasRojas_recibidas();
       
       penalesTotalesPateados += resultado.getPenalesConvertidos() + resultado.getPenalesErrados();
       penalesTotalesRecibidos += resultado.getPenalesRecibidos() + resultado.getPenalesAtajados();
       tarjetasTotalProvocadas += resultado.getTarjetasRojas_provocadas() + resultado.getTarjetasAmarillas_provocadas();
       tarjetasTotalRecibidas += resultado.getTarjetasAmarillas_recibidas() + resultado.getTarjetasRojas_recibidas();
       
       
    }   
    
    // Establece los atributos en el request para pasarlos al JSP
    request.setAttribute("golesConvertidos", golesConvertidos);
    request.setAttribute("golesRecibidos", golesRecibidos);
    request.setAttribute("penalesAtajados", penalesAtajados);
    request.setAttribute("penalesRecibidos", penalesRecibidos);
    request.setAttribute("penalesConvertidos", penalesConvertidos);
    request.setAttribute("penalesErrados", penalesErrados);
    request.setAttribute("tarjetasAmarillasProvocadas", tarjetasAmarillasProvocadas);
    request.setAttribute("tarjetasAmarillasRecibidas", tarjetasAmarillasRecibidas);
    request.setAttribute("tarjetasRojasProvocadas", tarjetasRojasProvocadas);
    request.setAttribute("tarjetasRojasRecibidas", tarjetasRojasRecibidas);
    request.setAttribute("penalesTotalesPateados", penalesTotalesPateados);
request.setAttribute("penalesTotalesRecibidos", penalesTotalesRecibidos);
request.setAttribute("tarjetasTotalProvocadas", tarjetasTotalProvocadas);
request.setAttribute("tarjetasTotalRecibidas", tarjetasTotalRecibidas);
    



   



    // Ahora puedes redirigir a tu JSP
    response.sendRedirect("estadisticas.jsp");

}


 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
