<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="componentes/header.jsp" %>
<body>
    <div class="d-flex" id="wrapper">

        <%@include file="componentes/sidebar.jsp" %>

        <!-- Page content wrapper-->
        <div id="page-content-wrapper">
            <%@include file="componentes/navbar.jsp" %>

            <!-- Page content-->
            <div class="container-fluid">
                <h1 class="mt-4">Lista de Partidos Programados</h1>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Rival</th>
                                <th>Lugar</th>
                                <th>Estadio</th>
                                <th>Árbitro</th>
                                <th>Acciones</th>
                                <th>Estado</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2024-02-28</td>
                                <td>Equipo A</td>
                                <td>Estadio A</td>
                                <td>Local</td>
                                <td>Árbitro 1</td>
                                
                                <td>
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cargarResultadoModal">Cargar Resultado</button>
                                </td>
                                <td>Sin Cargar</td>

                            </tr>
                            <!-- Aquí se pueden agregar más filas según la cantidad de partidos -->
                        </tbody>
                    </table>
                </div>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cargarProximoPartidoModal">Cargar Partido Próximo</button>
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
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cargarResultadoModalLabel">Cargar Resultado del Partido</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para cargar resultado del partido -->
                    <form>
                        <div class="mb-3">
                            <label for="equipoLocal" class="form-label">Equipo Local:</label>
                            <input type="text" class="form-control" id="equipoLocal">
                        </div>
                        <div class="mb-3">
                            <label for="equipoVisitante" class="form-label">Equipo Visitante:</label>
                            <input type="text" class="form-control" id="equipoVisitante">
                        </div>
                        <div class="mb-3">
                            <label for="golesLocal" class="form-label">Goles del Equipo Local:</label>
                            <input type="number" class="form-control" id="golesLocal">
                        </div>
                        <div class="mb-3">
                            <label for="golesVisitante" class="form-label">Goles del Equipo Visitante:</label>
                            <input type="number" class="form-control" id="golesVisitante">
                        </div>
                        <div class="mb-3">
                            <label for="tarjetasLocal" class="form-label">Tarjetas del Equipo Local:</label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="tarjetasAmarillasLocal" placeholder="Amarillas">
                                <input type="number" class="form-control" id="tarjetasRojasLocal" placeholder="Rojas">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="tarjetasVisitante" class="form-label">Tarjetas del Equipo Visitante:</label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="tarjetasAmarillasVisitante" placeholder="Amarillas">
                                <input type="number" class="form-control" id="tarjetasRojasVisitante" placeholder="Rojas">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="penales" class="form-label">Penales:</label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="penalesConvertidos" placeholder="Convertidos">
                                <input type="number" class="form-control" id="penalesErrados" placeholder="Errados">
                                <input type="number" class="form-control" id="penalesRecibidos" placeholder="Recibidos">
                                <input type="number" class="form-control" id="penalesAtajados" placeholder="Atajados">
                            </div>
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="esEquipoLocal" value="local">
                            <label class="form-check-label" for="esEquipoLocal">¿Es tu equipo el local?</label>
                        </div>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para cargar próximo partido -->
    <div class="modal fade" id="cargarProximoPartidoModal" tabindex="-1" aria-labelledby="cargarProximoPartidoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cargarProximoPartidoModalLabel">Cargar Próximo Partido</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para cargar próximo partido -->
                    <form>
                        <div class="mb-3">
                            <label for="fecha" class="form-label">Fecha:</label>
                            <input type="date" class="form-control" id="fecha">
                        </div>
                        <div class="mb-3">
                            <label for="rival" class="form-label">Rival:</label>
                            <input type="text" class="form-control" id="rival">
                        </div>
                        <div class="mb-3">
                            <label for="lugar" class="form-label">Lugar:</label>
                            <input type="text" class="form-control" id="lugar">
                        </div>
                        <div class="mb-3">
                            <label for="estadio" class="form-label">Estadio:</label>
                            <input type="text" class="form-control" id="estadio">
                        </div>
                        <div class="mb-3">
                            <label for="arbitro" class="form-label">Árbitro:</label>
                            <input type="text" class="form-control" id="arbitro">
                        </div>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
