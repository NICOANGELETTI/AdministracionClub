
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collections"%>
<%@page import="logica.Jugador"%>
<%@page import="logica.Asistidor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


   <!-- Tabla de asistidores -->
                <h2 style="color: white;">Asistidores</h2>
                <div class="table-responsive">
                    <table class="table table-striped" style="color: #fff;">
                        <thead>
                            <tr>
                                <th style="color: white;">Nombre</th>
                                <th style="color: white;">Nacionalidad</th>
                                <th style="color: white;">Asist</th>
                                <th class="text-center" style="color: white;">Acciones</th><!-- Añadimos la clase text-center -->
                            </tr>
                        </thead>
                        <tbody>
                            <%    request.getRequestDispatcher("SvAsistidor").include(request, response);  //Esta Linea hace que se actualice automaticamente %>            
                            <% List<Asistidor> asistidoresList = (List<Asistidor>) request.getSession().getAttribute("listaDeAsistidores");
                                if (asistidoresList != null && !asistidoresList.isEmpty()) {
               
                                //Ordena lista de mayor a menor
                                Collections.sort(asistidoresList, new Comparator<Asistidor>() {
            @Override
            public int compare(Asistidor a1, Asistidor a2) {
                return Integer.compare(a2.getAsistencias(), a1.getAsistencias());
            }
        });

                                    for (Asistidor asistidor : asistidoresList) { %>
                            <tr>
                                <td style="color: white;"><%= asistidor.getNombre() %></td>
                                <td style="color: white;"><%= asistidor.getNacionalidad() %></td>
                                <td style="color: white;"><%= asistidor.getAsistencias() %></td>
                                <td class="text-center"><!-- Añadimos la clase text-center -->
                                    <form action="SvElimAsistidor" method="post" style="display: inline-block;">
                                        <button type="submit" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000; color: black;">Eliminar</button>
                                        <input type="hidden" name="idAsistidor" value="<%= asistidor.getIdJugador()%>">   
                                    </form>
                                    
                                    
                                  
 <!-- Botón para editar cantidad de asistencias -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalEditarAsistidor<%= asistidor.getIdJugador() %>" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">
    Editar Cant. Asistencias
</button>                        
                                    </td>
                            </tr>
                            <% }
                                } else { %>
                            <tr>
                                <td colspan="4" style="color: white; text-align: center;">No hay asistidores disponibles.</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <!-- Botón para agregar asistidor -->
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarAsistidorModal" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Agregar Asistidor</button>
                </div>
                
                
                
                <!-- Modal para agregar asistidor -->
                <div class="modal fade" id="agregarAsistidorModal" tabindex="-1" aria-labelledby="agregarAsistidorModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" style="background-color: #141e30; color: #fff;">
                            <div class="modal-header">
                                <h5 class="modal-title" id="agregarAsistidorModalLabel">Agregar Asistidor</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="SvAsistidor" method="POST">
                                    
                                    <label for="idJugador" class="form-label">Nombre del Goleador:</label>
                                    <select name="idJugador" class="form-select" id="idJugador" style="color: #000; background-color: #fff;">
                                        <% if (listaJugadores != null && !listaJugadores.isEmpty()) {
                                            for (Jugador jugador : listaJugadores) { %>
                                              <option value="<%= jugador.getIdJugador() %>"><%= jugador.getNombre() %></option>
                                        <% }
                                            } %>
                                    </select>
                                    <div class="mb-3">
                                        <label for="asistenciasRealizadas" class="form-label">Asistencias</label>
                                        <input type="asistenciasRealizadas" name="asistenciasRealizadas" class="form-control" id="asistenciasRealizadas" style="color: #000; background-color: #fff;">
                                    </div>
                                    <button type="submit" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4;">Agregar Asistidor</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                                    
                          
                                    
                                    
                                <!-- Botón para editar la cantidad de asistencias -->
<% for (Asistidor asistidorEdit : asistidoresList) { %>


    <!-- Modal para editar la cantidad de asistencias -->
    <div class="modal fade" id="modalEditarAsistidor<%= asistidorEdit.getIdJugador() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #141e30; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar Cant. Asistencias</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="SvEditAsistidor" method="POST">
                    <input type="hidden" name="idAsistidor" value="<%= asistidorEdit.getIdJugador() %>">
                    <div class="modal-body">
                        <label for="asistenciasAsistidor" class="form-label">Cantidad de Asistencias</label>
                        <input name="asistenciasAsistidor" type="number" id="asistenciasAsistidor" class="form-control" placeholder="Cantidad de asistencias" style="color: #000; background-color: #fff;" value="<%= asistidorEdit.getAsistencias() %>">
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
          
                                    