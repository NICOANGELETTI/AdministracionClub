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
                <h1 class="mt-4">Estadisticas de la Temporada</h1>

                <!-- Tabla de goleadores -->
                <h2>Goleadores</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Nacionalidad</th>
                                <th>Goles</th>
                                <th class="text-center">Acciones</th><!-- Añadimos la clase text-center -->
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Aquí se pueden agregar más filas según la lista de goleadores -->
                            <tr>
                                <td>Jugador 1</td>
                                <td>Argentina</td>
                                <td>10</td>
                                <td class="text-center"><!-- Añadimos la clase text-center -->
                                    <button type="button" class="btn btn-primary">Editar</button>
                                    <button type="button" class="btn btn-danger">Eliminar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Botón para agregar goleador -->
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarGoleadorModal">Agregar Goleador</button>
                </div>

                <!-- Tabla de asistidores -->
                <h2>Asistidores</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Nacionalidad</th>
                                <th>Asist</th>
                                <th class="text-center">Acciones</th><!-- Añadimos la clase text-center -->
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Aquí se pueden agregar más filas según la lista de asistidores -->
                            <tr>
                                <td>Jugador 2</td>
                                <td>Brasil</td>
                                <td>8</td>
                                <td class="text-center"><!-- Añadimos la clase text-center -->
                                    <button type="button" class="btn btn-primary">Editar</button>
                                    <button type="button" class="btn btn-danger">Eliminar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Botón para agregar asistidor -->
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarAsistidorModal">Agregar Asistidor</button>
                </div>

                <!-- Tabla de tarjetas -->
                <div class="row">
                    <div class="col-md-6">
                        <h2>Tarjetas Provocadas</h2>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Amarillas</th>
                                        <th>Rojas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Equipo 1</td>
                                        <td>5</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>Equipo 2</td>
                                        <td>3</td>
                                        <td>2</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2>Tarjetas Recibidas</h2>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Amarillas</th>
                                        <th>Rojas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Jugador 1</td>
                                        <td>2</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>Jugador 2</td>
                                        <td>1</td>
                                        <td>1</td>
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
                        <h2>Penales a Favor</h2>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Penales Convertidos</th>
                                        <th>Penales Errados</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Equipo 1</td>
                                        <td>5</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>Equipo 2</td>
                                        <td>3</td>
                                        <td>2</td>
                                    </tr>
                                    <!-- Agrega más filas según sea necesario -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2>Penales en Contra</h2>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Penales Recibidos</th>
                                        <th>Penales Atajados</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Equipo 1</td>
                                        <td>3</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>Equipo 2</td>
                                        <td>2</td>
                                        <td>0</td>
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
                        <h2 class="text-center">Posesión Promedio</h2>
                        <div class="table-responsive">
                            <table class="table table-striped text-center">
                                <thead>
                                    <tr>
                                        <th>Posesión Promedio (%)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>55</td>
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
    <!-- Modal para agregar goleador -->
    <div class="modal fade" id="agregarGoleadorModal" tabindex="-1" aria-labelledby="agregarGoleadorModalLabel" aria-hidden="true">
        <!-- Contenido del modal para agregar goleador -->
    </div>
    <!-- Modal para agregar asistidor -->
    <div class="modal fade" id="agregarAsistidorModal" tabindex="-1" aria-labelledby="agregarAsistidorModalLabel" aria-hidden="true">
        <!-- Contenido del modal para agregar asistidor -->
    </div>
</body>
</html>
