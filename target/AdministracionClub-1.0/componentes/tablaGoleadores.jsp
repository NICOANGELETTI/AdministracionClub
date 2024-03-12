
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collections"%>
<%@page import="logica.Jugador"%>
<%@page import="java.util.List"%>
<%@page import="logica.Goleador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="table-responsive">
    <table class="table table-striped" style="color: #fff;">
        <thead>
            <tr>
                <th style="color: white;">Nombre</th>
                <th style="color: white;">Posicion</th>
                <th style="color: white;">Goles</th>
                <th class="text-center" style="color: white;">Acciones</th>
            </tr>
        </thead>
        <tbody>
            <% 
            request.getRequestDispatcher("SvGoleador").include(request, response);
            List<Goleador> listaGoleadores = (List<Goleador>) request.getSession().getAttribute("listaGoleadores");
            if (listaGoleadores != null && !listaGoleadores.isEmpty()) {
              //Ordena lista de mayor a menor
                                Collections.sort(listaGoleadores, new Comparator<Goleador>() {
            @Override
            public int compare(Goleador a1, Goleador a2) {
                return Integer.compare(a2.getGoles(), a1.getGoles());
            }
        });
            
            
                for (Goleador goleador : listaGoleadores) { %>
                    <tr>
                        <td style="color: white;"><%= goleador.getNombre()%></td>
                        <td style="color: white;"><%= goleador.getPosicion()%></td>
                        <td style="color: white;"><%= goleador.getGoles()%></td>
                        <td class="text-center">
                            <form action="SvElimGoleador" method="post" style="display: inline-block;">
                                <input type="hidden" name="idGoleador" value="<%= goleador.getIdJugador()%>">
                                <button type="submit" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000; color: black;">Eliminar</button>
                            </form>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalEditarGoleador<%= goleador.getIdJugador() %>" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">
                                Editar Cant. Goles
                            </button>
                        </td>
                    </tr>
            <% 
                }
            } %>
        </tbody>
    </table>
</div>

<!-- Modales para editar cantidad de goles -->
<% for (Goleador goleadorEdit : listaGoleadores) { %>
    <div class="modal fade" id="modalEditarGoleador<%= goleadorEdit.getIdJugador() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #141e30; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar Cant. Goles</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="SvEditGoleador" method="POST">
                    <input type="hidden" name="idEdit" value="<%= goleadorEdit.getIdJugador() %>">
                    <div class="modal-body">
                        <input name="golesGoleador" type="number" id="golesGoleador" class="form-control" placeholder="Cantidad de goles" style="color: #000; background-color: #fff;"  value="<%= goleadorEdit.getGoles() %>">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #6c757d; border-color: #6c757d; color: #000;">Cerrar</button>
                        <button type="submit" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: #000;">Guardar cambios</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<% } %>


   <!-- Botón para agregar goleador -->
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarGoleadorModal" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Agregar Goleador</button>
                </div>
                <!-- Modal para agregar goleador -->
                <div class="modal fade" id="agregarGoleadorModal" tabindex="-1" aria-labelledby="agregarGoleadorModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: #141e30; color: #fff;">
                            <div class="modal-header">
                                <h5 class="modal-title" id="agregarGoleadorModalLabel">Agregar Goleador</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="SvGoleador" method="POST">
                                    <label for="idJugador" class="form-label">Nombre del Goleador:</label>
                                    <select name="idJugador" class="form-select" id="idJugador" style="color: #000; background-color: #fff;">
                                        <%            List<Jugador> listaJugadores = (List) request.getSession().getAttribute("listaJugadores");
                                            if (listaJugadores != null && !listaJugadores.isEmpty()) {
                                                    for (Jugador jugador : listaJugadores) {
                                        %>
                                        <option value="<%= jugador.getIdJugador()%>"><%= jugador.getNombre()%></option>
                                        <% } %>
                                        <% } %>
                                    </select>
                                    <div class="mb-3">
                                        <label for="golesAnotados" class="form-label">Goles</label>
                                        <input type="int" name="golesAnotados" class="form-control" id="golesAnotados" style="color: #000; background-color: #fff;">
                                    </div>
                                    <button type="submit" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4;">Agregar Goleador</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                                        
                        

                                    
                                 
                                    
         <!--  Modal editar Goleador -->
                                        
<%  
    for (Goleador goleadorEdit : listaGoleadores) { %>
<div class="modal fade" id="modalEditarGoleador<%= goleadorEdit.getIdJugador() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="background-color: #141e30; color: #fff;">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Editar Goles</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
            
            
            <form action="SvEditGoleador" method="POST">
                <input type="hidden" name="idEdit" value="<%= goleadorEdit.getIdJugador() %>">
                <div class="modal-body">
                    <input name="golesGoleador" type="number" id="golesGoleador" class="form-control" placeholder="Cantidad de goles" style="color: #000; background-color: #fff;"  value="<%= goleadorEdit.getGoles() %>">
                </div>
                <input type="hidden" name="idEdit" value="<%= goleadorEdit.getIdJugador() %>">

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #6c757d; border-color: #6c757d; color: #000;">Cerrar</button>
                    <button type="submit" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: #000;">Guardar cambios</button>
                </div>
            </form>
        </div>
    </div>
</div>
<% } %>  


