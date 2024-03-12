/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;
import logica.Jugador;

@WebServlet(name = "SvEditJugadores", urlPatterns = {"/SvEditJugadores"})
public class SvEditJugadores extends HttpServlet {
    
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
        
        int idJugador = Integer.parseInt(request.getParameter("idEdit"));
        
        
        
        String nombre = request.getParameter("nombreEditar");
        
        String nacionalidad = request.getParameter("nacionalidadEditar");
        String posicion = request.getParameter("posicionEditar");
        String estado = request.getParameter("estadoEditar");

        // Obteniendo el valor del parámetro "fecha" de la solicitud
        String fechaNacimientoString = request.getParameter("fechaNacimientoEditar");

// Creando un objeto SimpleDateFormat para el formato de fecha deseado
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd-MM-yyyy"); // Aquí debes especificar el formato en el que se encuentra la fecha en el parámetro

        Date fecha = null;
        try {
            // Parseando la cadena de fecha al objeto Date
            fecha = formatoFecha.parse(fechaNacimientoString);
        } catch (Exception e) {
            // Manejo de errores si la conversión falla
            e.printStackTrace(); // O manejar el error de alguna otra manera
        }
        Jugador jugador = control.traerJugador(idJugador);
        
        jugador.setNombre(nombre);
        jugador.setFecha_nac(fecha);
        jugador.setNacionalidad(nacionalidad);
        jugador.setPosicion(posicion);
        jugador.setEstado(estado);
        
        control.editarJugador(jugador);
        response.sendRedirect("SvJugadores");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
