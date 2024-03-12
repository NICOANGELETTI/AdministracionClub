
<%@page import="logica.Jugador"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="componentes/header.jsp" %>

<body style="background-color: #141e30; color: #fff;">
    <div class="d-flex" id="wrapper">

        <%@include file="componentes/sidebar.jsp" %>

        <!-- Page content wrapper-->
        <div id="page-content-wrapper">
            <%@include file="componentes/navbar.jsp" %>

            <!-- Page content-->
            <div class="container-fluid">
                <h1 class="mt-4">Lista de Jugadores del Plantel</h1>
                 <div class="mb-3">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarJugadorModal" 
                style="background-color: #03e9f4; border-color: #03e9f4; color: black;">
            Agregar Jugador de la Cantera
        </button>
        <div class="alert alert-warning mt-2" role="alert" style="max-width: 500px;">
            Desde aqui puedes agregar jugadores de la cantera. Para agregar jugadores provenientes de otros clubes, dirígete a la sección "Presupuesto" --> "Compra de Jugador".
        </div>
    </div>
                <div class="table-responsive">
                    <table class="table table-striped" style="color: #fff;">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                           
                                <th>Nacionalidad</th>
                                <th>Posición</th>
                                <th>Estado</th>
                               
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  
                                        request.getRequestDispatcher("SvEditJugadores").include(request, response); //Esta Linea hace que se actualice automaticamente
                                        request.getRequestDispatcher("SvJugadores").include(request, response); //Esta Linea hace que se actualice automaticamente
                            List<Jugador> listaJugadores = (List<Jugador>)request.getSession().getAttribute("listaJugadores");

                            if (listaJugadores != null && !listaJugadores.isEmpty()) {
                                for(Jugador jugador : listaJugadores){
                            %>
                            <tr>
                                <td style="color: #fff;"><%=  jugador.getNombre()%></td>
                               
                                <td style="color: #fff;"><%=  jugador.getNacionalidad()%></td>
                                <td  style="color: #fff;">
                                    <%= jugador.getPosicion()%>
                                </td>
                                <td  style="color: #fff;">
                                    <%= jugador.getEstado()%>
                                </td>
                                
                               
                                <td>



                                    <form action="SvElimJugador" method="POST" style="display: inline;">
                                        <input type="hidden" name="idJugador" value="<%= jugador.getIdJugador()%>">
                                        <button type="submit" class="btn btn-danger">Eliminar</button>
                                    </form>
                                        
                                        
                  <!-- Botón para abrir el modal de edición de jugador -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalEditarJugador<%= jugador.getIdJugador() %>" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">
    Editar Jugador
</button>

                                        
                                        
                                </td>
                            </tr>
                            <%  
                                }
                            } else {
                            %>
                            <tr><td colspan='6' style='color: #fff;'>No hay jugadores en el plantel</td></tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>

    <!-- Modal para agregar jugador -->
    <div class="modal fade" id="agregarJugadorModal" tabindex="-1" aria-labelledby="agregarJugadorModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #141e30; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarJugadorModalLabel">Agregar Jugador</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para agregar jugador -->
                    <form action="SvJugadores" method="POST">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre:</label>
                            <input type="text" name="nombre"  class="form-control" id="nombre" style="color: #000;">
                        </div>
                        <div class="mb-3">
                            <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento:</label>
                            <input type="date" name="fechaNacimiento" class="form-control" id="fechaNacimiento" style="color: #000;">
                        </div>
                        <div class="mb-3">
                            <label for="nacionalidad" class="form-label">Nacionalidad:</label>
                            <input type="text" name="nacionalidad" class="form-control" id="nacionalidad" style="color: #000;">
                        </div>
                        <div class="mb-3">
                            <label for="posicion" class="form-label">Posición:</label>
                            <select name="posicion" class="form-select" id="posicion" style="color: #000;">
                                <option value="ARQ">ARQ</option>
                                <option value="DEF">DEF</option>
                                <option value="MED">MED</option>
                                <option value="DEL">DEL</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="estado" class="form-label">Estado:</label>
                            <select name="estadoJugador" class="form-select" id="estado" style="color: #000;">
                                <option value="Activo">Activo</option>
                                <option value="Lesionado">Lesionado</option>
                                <option value="Relegado">Relegado</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Agregar Jugador</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <!-- Modal editar Jugador -->
<% for (Jugador jugadorEdit : listaJugadores) { %>
    <div class="modal fade" id="modalEditarJugador<%= jugadorEdit.getIdJugador() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #141e30; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar Jugador</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="SvEditJugadores" method="POST">
                    <input type="hidden" name="idEdit" value="<%= jugadorEdit.getIdJugador() %>">
                    <div class="modal-body">
                        <div class="m-3"> <!-- Agregamos un margen alrededor del contenido del formulario -->
                            <div class="mb-3">
                                <label for="nombreEditar" class="form-label">Nombre:</label>
                                <input name="nombreEditar" type="text" class="form-control" id="nombreEditar" style="color: #000;" value="<%=  jugadorEdit.getNombre() %>">
                            </div>
                            <div class="mb-3">
                                <label for="fechaNacimientoEditar" class="form-label">Fecha de Nacimiento:</label>
                                <input name="fechaNacimientoEditar" type="date" class="form-control" id="fechaNacimientoEditar" style="color: #000;" value="<%=  jugadorEdit.getFecha_nac() %>"> 
                            </div>
                            <div class="mb-3">
                                <label for="nacionalidadEditar" class="form-label">Nacionalidad:</label>
                                <input name="nacionalidadEditar" type="text" class="form-control" id="nacionalidadEditar" style="color: #000;" value="<%=  jugadorEdit.getNacionalidad()  %>">
                            </div>
                            <div class="mb-3">
                                <label for="posicionEditar" class="form-label">Posición:</label>
                                <select name="posicionEditar" class="form-select" id="posicionEditar" style="color: #000;" value="<%=  jugadorEdit.getPosicion() %>"> 
                                    <option value="ARQ">ARQ</option>
                                    <option value="DEF">DEF</option>
                                    <option value="MED">MED</option>
                                    <option value="DEL">DEL</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="estadoEditar" class="form-label">Estado:</label>
                                <select name="estadoEditar" class="form-select" id="estadoEditar" style="color: #000;" value="<%=  jugadorEdit.getEstado() %>">
                                    <option value="Activo">Activo</option>
                                    <option value="Lesionado">Lesionado</option>
                                    <option value="Relegado">Relegado</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Guardar cambios</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<% } %>

    
    
    
    
    
    
    
    
    
    
 

</body>
</html>
