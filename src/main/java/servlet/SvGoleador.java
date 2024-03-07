/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import logica.Jugador;


@WebServlet(name = "SvGoleador", urlPatterns = {"/SvGoleador"})
public class SvGoleador extends HttpServlet {

 
        ControladoraLogica control = new ControladoraLogica();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Goleador> listaGoleadores = new ArrayList<>();
        
        listaGoleadores = control.traerGoleadores();
        
        HttpSession sesion = request.getSession(); 
        sesion.setAttribute("listaGoleadores", listaGoleadores);
        response.sendRedirect("estadisticas.jsp");

        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         int idJugador = Integer.parseInt(  request.getParameter("idJugador"));
        int golesAnotados =   Integer.parseInt(request.getParameter("golesAnotados")); 
         boolean vendido = false;
      
              
       Jugador jugador = control.traerJugador(idJugador);
       
       control.crearGoleador(golesAnotados, jugador.getNombre(), jugador.getFecha_nac(), jugador.getNacionalidad(), jugador.getPosicion() , jugador.getEstado() , vendido);
        
      
        response.sendRedirect("SvGoleador");
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
