<%@page import="logica.Partido"%>
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
                <h1 class="mt-4">Lista de Partidos Programados</h1>
            
                <!-- Botón para cargar próximo partido -->
                <button type="button" class="btn" style="width: 20%; padding: 10px 20px; font-size: 16px; background: #03e9f4; border: none; outline: none; border-radius: 5px; cursor: pointer; transition: background 0.3s ease; color: #000;" data-bs-toggle="modal" data-bs-target="#cargarProximoPartidoModal">Cargar Partido Próximo</button>
                
                <div class="table-responsive">
                    <table class="table table-striped" style="color: #fff;">
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Rival</th>
                                <th>Lugar</th>
                                <th>Estadio</th>
                                <th>Árbitro</th>
                                <th>Acciones</th>
                                <th>Estado Resultado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Partido> listaPartidos = (List) request.getSession().getAttribute("listaPartidos");
                                if (listaPartidos != null && !listaPartidos.isEmpty()) {
                                    for (Partido partido : listaPartidos) {
                            %>
                            <tr>
                                <td style="color: #fff;"><%=  partido.getFecha()%></td>
                                <td style="color: #fff;"><%=  partido.getRival()%></td>
                                <td style="color: #fff;"><%=  partido.getLugar()%></td>
                                <td style="color: #fff;"><%=  partido.getEstadio()%></td>
                                <td style="color: #fff;"><%=  partido.getArbitro()%></td>
                                <td style="color: #fff;">
                                    <form action="SvElimPartidos" method="POST">
                                        <% if (!partido.isEstadoPartido()) { %>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cargarResultadoModal" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Cargar Resultado</button>
                                        <% } else { %>
                                        <button type="button" class="btn btn-primary" disabled>Cargar Resultado</button>
                                        <% }%>
                                        <button type="submit" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#eliminarPartidoModal" style="background-color: #FF0000; border-color: #FF0000; color: black;">Eliminar</button>
                                        <input type="hidden" name="id" value="<%= partido.getIdPartido()%>">
                                    </form>

                                </td>
                                <td style="color: #fff;">
                                    
                                    
                                    
                                    <% 
                                   String textoEstado;

                                 if(partido.isEstadoPartido()==true){
                                        textoEstado = "Cargado";
                                        }else{
                                        textoEstado = "No Cargado";
                                        }
                                    
                                    %>
                                    
                                    <%= textoEstado %>
                                
                                
                                </td>
                            </tr>
                            <%
                                }
                                } else {
                                    // Si no hay partidos programados, puedes mostrar un mensaje o realizar alguna acción adicional
                                    out.println("<tr><td colspan='7' style='color: #fff;'>No hay partidos programados</td></tr>");
                                }
                            %>
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

        <!-- Modal para cargar resultado del partido -->
    <div class="modal fade" id="cargarResultadoModal" tabindex="-1" aria-labelledby="cargarResultadoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #141e30; color: #fff;">
             <div class="modal-header">
    <h5 class="modal-title" id="cargarResultadoModalLabel">Cargar Resultado del Partido</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>

                <div class="modal-body">
                    <!-- Formulario para cargar resultado del partido -->
                    <form action="SvResultados" method="POST"> 
                        <div class="mb-3">
                            <label for="equipoLocal" class="form-label">Equipo Local:</label>
                            <input type="text" name="equipoLocal"  class="form-control" id="equipoLocal">
                        </div>
                        <div class="mb-3">
                            <label for="equipoVisitante" class="form-label">Equipo Visitante:</label>
                            <input type="text" name="equipoVisitante" class="form-control" id="equipoVisitante">
                        </div>
                        <div class="mb-3">
                            <label for="golesLocal" class="form-label">Goles del Equipo Local:</label>
                            <input type="number" name="golesEqLocal" class="form-control" id="golesLocal">
                        </div>
                        <div class="mb-3">
                            <label for="golesVisitante" class="form-label">Goles del Equipo Visitante:</label>
                            <input type="number" name="golesEqVisit" class="form-control" id="golesVisitante">
                        </div>
                        <div class="mb-3">
                            <label for="tarjetasLocal" class="form-label">Tarjetas del Equipo Local:</label>
                            <div class="input-group">
                                <input type="number" name="tarjetasAmarillasEqLocal" class="form-control" id="tarjetasAmarillasLocal" placeholder="Amarillas">
                                <input type="number" name="tarjetasRojasEqLocal"class="form-control" id="tarjetasRojasLocal" placeholder="Rojas">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="tarjetasVisitante" class="form-label">Tarjetas del Equipo Visitante:</label>
                            <div class="input-group">
                                <input type="number" name="tarjetasAmarillasEqVisit"  class="form-control" id="tarjetasAmarillasVisitante" placeholder="Amarillas">
                                <input type="number" name="tarjetasRojasEqVisit" class="form-control" id="tarjetasRojasVisitante" placeholder="Rojas">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="penales" class="form-label">Penales:</label>
                            <div class="input-group">
                                <input type="number" name="penalesConvertidos"   class="form-control" id="penalesConvertidos" placeholder="Convertidos">
                                <input type="number" name="penalesErrados"class="form-control" id="penalesErrados" placeholder="Errados">
                                <input type="number" name="penalesRecibidos"class="form-control" id="penalesRecibidos" placeholder="Recibidos">
                                <input type="number" name="penalesAtajados" class="form-control" id="penalesAtajados" placeholder="Atajados">
                            </div>
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" name="miEquipo"  class="form-check-input" id="esEquipoLocal" value="local">
                            <label class="form-check-label" for="esEquipoLocal">¿Es tu equipo el local?</label>
                        </div>
                        <%
                            for (Partido partido : listaPartidos) {
                        %>
                        <input type="hidden" name="idPartidoResultado" value="<%= partido.getIdPartido()%>">
                        <%
                            }
                        %>

                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal para cargar próximo partido -->
    <div class="modal fade" id="cargarProximoPartidoModal" tabindex="-1" aria-labelledby="cargarProximoPartidoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #141e30; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="cargarProximoPartidoModalLabel">Cargar Próximo Partido</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para cargar próximo partido -->
                    <form action="SvPartidos" method="POST">
                        <div class="mb-3">
                            <label for="fecha" class="form-label">Fecha:</label>
                            <input type="date" name="fecha" class="form-control" id="fecha">
                        </div>
                       <div class="mb-3">
                            <label for="rival" class="form-label">Rival:</label>
                            <input type="text" name="rival" class="form-control" id="rival">
                        </div>
                        <div class="mb-3">
                            <label for="lugar" class="form-label">Lugar:</label>
                            <input type="text" name="lugar" class="form-control" id="lugar">
                        </div>
                        <div class="mb-3">
                            <label for="estadio" class="form-label">Estadio:</label>
                            <input type="text" name="estadio" class="form-control" id="estadio">
                        </div>
                        <div class="mb-3">
                            <label for="arbitro" class="form-label">Árbitro:</label>
                            <input type="text" name="arbitro" class="form-control" id="arbitro">
                        </div>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

