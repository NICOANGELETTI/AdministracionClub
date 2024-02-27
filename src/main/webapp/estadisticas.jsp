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
                                <th style="color: white;">Nacionalidad</th>
                                <th style="color: white;">Goles</th>
                                <th class="text-center" style="color: white;">Acciones</th><!-- Añadimos la clase text-center -->
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Aquí se pueden agregar más filas según la lista de goleadores -->
                            <tr>
                                <td style="color: white;">Jugador 1</td>
                                <td style="color: white;">Argentina</td>
                                <td style="color: white;">10</td>
                                <td class="text-center"><!-- Añadimos la clase text-center -->
                                    <button type="button" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Editar</button>
                                    <button type="button" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000; color: black;">Eliminar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Botón para agregar goleador -->
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarGoleadorModal" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Agregar Goleador</button>
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
                            <!-- Aquí se pueden agregar más filas según la lista de asistidores -->
                            <tr>
                                <td style="color: white;">Jugador 2</td>
                                <td style="color: white;">Brasil</td>
                                <td style="color: white;">8</td>
                                <td class="text-center"><!-- Añadimos la clase text-center -->
                                    <button type="button" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Editar</button>
                                    <button type="button" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000; color: black;">Eliminar</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Botón para agregar asistidor -->
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarAsistidorModal" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Agregar Asistidor</button>
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
