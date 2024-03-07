
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
    
    //Egreso
    int idJugadorVenta = Integer.parseInt(request.getParameter("idJugadorVenta"));
    int montoIngreso = Integer.parseInt(request.getParameter("montoIngreso"));
    String operacionEgreso = request.getParameter("tipoOperacion");
    
    HttpSession session = request.getSession();
    if (session.getAttribute("totalPresupuesto") == null) {
        session.setAttribute("totalPresupuesto", 0); // Inicializar con un valor predeterminado (en este caso, 0)
    }

    // Obtener la lista de jugadores en tiempo real
    List<Jugador> listaJugadores = control.traerJugadores();
    
    // Buscar el jugador por su ID
    Jugador jugador = null;
    for (Jugador j : listaJugadores) {
        if (j.getIdJugador() == idJugadorVenta) {
            jugador = j;
            break;
        }
    }
    
    if (jugador != null) {
        // Restar el monto de la transacción de egreso al total del presupuesto
        Integer totalPresupuesto = control.calcularPresupuestoTotal();
        if (totalPresupuesto != null) {
            totalPresupuesto += montoIngreso;
            session.setAttribute("totalPresupuesto", totalPresupuesto);
        }
        
        // Crear el presupuesto
        control.crearPresupuesto(montoIngreso, operacionEgreso, jugador);
        //Eliminar Jugador
        control.eliminarJugador(idJugadorVenta);
        
        
    } else {
        // Manejar el caso en que el jugador no se encuentre en la lista
    }

    
    
    
    
    
    //Ingreso
    
    
    
    
    
    
    response.sendRedirect("presupuesto.jsp");
}

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
