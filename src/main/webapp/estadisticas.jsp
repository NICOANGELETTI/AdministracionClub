
<%@page import="logica.Asistidor"%>
<%@page import="logica.Goleador"%>
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
                <h1 class="mt-4">Estadisticas de la Temporada</h1>

                <!-- Tabla de goleadores -->
                <h2 style="color: white;">Goleadores</h2>
                <div class="table-responsive">
                    <table class="table table-striped" style="color: #fff;">
                        <thead>
                            <tr>
                                <th style="color: white;">Nombre</th>
                                <th style="color: white;">Posicion</th>
                                <th style="color: white;">Goles</th>
                                <th class="text-center" style="color: white;">Acciones</th><!-- Añadimos la clase text-center -->
                            </tr>
                        </thead>
                        <tbody>


                            <%   List<Goleador> listaGoleadores = (List) request.getSession().getAttribute("listaGoleadores");
                                
                                for(Goleador goleador : listaGoleadores){
                                
                                
                             
                               
                            
                            %>
                                <tr>
                                    <td style="color: white;"><%= goleador.getNombre()  %></td>
                                    <td style="color: white;"> <%= goleador.getPosicion()  %> </td>
                                    <td style="color: white;"><%= goleador.getGoles()  %></td>
                                    <td class="text-center"><!-- Añadimos la clase text-center -->
                                        <button type="button" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Editar</button>
                                        <button type="button" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000; color: black;">Eliminar</button>
                                    </td>
                                </tr>
                          
   <% }%>
    
                    </table>
                </div>
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



                                <tr>
                                    <td>${jugador.idJugador}</td>
                                    <td>${jugador.nombre}</td>
                                    <td>${jugador.fecha_nac}</td>
                                    <!-- Agrega más columnas según los atributos que quieras mostrar -->
                                </tr>


                                <!-- Formulario para agregar goleador -->

                                <%    // Llamar a los servlets para obtener las listas de odontólogos y pacientes
                                    request.getRequestDispatcher("SvJugadores").include(request, response);

                                %>

                                <form action="SvGoleador" method="POST">
                                    <label for="idJugador" class="form-label">Nombre del Goleador:</label>
                                    <select name="idJugador" class="form-select" id="idJugador" style="color: #000; background-color: #fff;">
                                        <%            List<Jugador> listaJugadores = (List) request.getSession().getAttribute("listaJugadores");
                                            if (listaJugadores != null && !listaJugadores.isEmpty()) {
                                                for (Jugador jugador : listaJugadores) {
                                        %>
                                              <option value="<%= jugador.getIdJugador() %>"><%= jugador.getNombre() %></option>

                                        <%
                                                }
                                            }
                                        %>
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
    <% List<Asistidor> asistidoresList = (List<Asistidor>) request.getSession().getAttribute("listaDeAsistidores");
    if (asistidoresList != null && !asistidoresList.isEmpty()) {
        for (Asistidor asistidor : asistidoresList) { %>
            <tr>
                <td style="color: white;"><%= asistidor.getNombre() %></td>
                <td style="color: white;"><%= asistidor.getNacionalidad() %></td>
                <td style="color: white;"><%= asistidor.getAsistencias() %></td>
                <td class="text-center"><!-- Añadimos la clase text-center -->
                    <button type="button" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Editar</button>
                    <button type="button" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000; color: black;">Eliminar</button>
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
                                <!-- Formulario para agregar asistidor -->
                                <form action="SvAsistidor" method="POST">
                                    <label for="idJugador" class="form-label">Nombre del Goleador:</label>
                                    <select name="idJugador" class="form-select" id="idJugador" style="color: #000; background-color: #fff;">
                                        <%          
                                            if (listaJugadores != null && !listaJugadores.isEmpty()) {
                                                for (Jugador jugador : listaJugadores) {
                                        %>
                                              <option value="<%= jugador.getIdJugador() %>"><%= jugador.getNombre() %></option>

                                        <%
                                                }
                                            }
                                        %>
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
                <!-- Tabla de tarjetas -->
                <div class="row">
                    <div class="col-md-6">
                        <h2 style="color: white;">Tarjetas Provocadas</h2>
                        <div class="table-responsive">
                            <table class="table table-striped" style="color: #fff;">
                                <thead>
                                    <tr>
                                        <th style="color: white;"></th>
                                        <th style="color: white;">Amarillas</th>
                                        <th style="color: white;">Rojas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="color: white;">Equipo 1</td>
                                        <td style="color: white;">5</td>
                                        <td style="color: white;">1</td>
                                    </tr>
                                    <tr>
                                        <td style="color: white;">Equipo 2</td>
                                        <td style="color: white;">3</td>
                                        <td style="color: white;">2</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2 style="color: white;">Tarjetas Recibidas</h2>
                        <div class="table-responsive">
                            <table class="table table-striped" style="color: #fff;">
                                <thead>
                                    <tr>
                                        <th style="color: white;"></th>
                                        <th style="color: white;">Amarillas</th>
                                        <th style="color: white;">Rojas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="color: white;">Jugador 1</td>
                                        <td style="color: white;">2</td>
                                        <td style="color: white;">0</td>
                                    </tr>
                                    <tr>
                                        <td style="color: white;">Jugador 2</td>
                                        <td style="color: white;">1</td>
                                        <td style="color: white;">1</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Fin de la tabla de tarjetas -->

                <!-- Tabla de penales -->
                <div class="row">
                    <div class="col-md-6">
                        <h2 style="color: white;">Penales a Favor</h2>
                        <div class="table-responsive">
                            <table class="table table-striped" style="color: #fff;">
                                <thead>
                                    <tr>
                                        <th style="color: white;"></th>
                                        <th style="color: white;">Penales Convertidos</th>
                                        <th style="color: white;">Penales Errados</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="color: white;">Equipo 1</td>
                                        <td style="color: white;">5</td>
                                        <td style="color: white;">1</td>
                                    </tr>
                                    <tr>
                                        <td style="color: white;">Equipo 2</td>
                                        <td style="color: white;">3</td>
                                        <td style="color: white;">2</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2 style="color: white;">Penales en Contra</h2>
                        <div class="table-responsive">
                            <table class="table table-striped" style="color: #fff;">
                                <thead>
                                    <tr>
                                        <th style="color: white;"></th>
                                        <th style="color: white;">Penales Recibidos</th>
                                        <th style="color: white;">Penales Atajados</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="color: white;">Equipo 1</td>
                                        <td style="color: white;">3</td>
                                        <td style="color: white;">1</td>
                                    </tr>
                                    <tr>
                                        <td style="color: white;">Equipo 2</td>
                                        <td style="color: white;">2</td>
                                        <td style="color: white;">0</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Fin de la tabla de penales -->

                <!-- Tabla de posesión promedio -->
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <h2 class="text-center" style="color: white;">Posesión Promedio</h2>
                        <div class="table-responsive">
                            <table class="table table-striped text-center" style="color: #fff;">
                                <thead>
                                    <tr>
                                        <th style="color: white;">Posesión Promedio (%)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="color: white;">55</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Fin de la tabla de posesión promedio -->

            </div>
        </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
  
</body>
</html> 