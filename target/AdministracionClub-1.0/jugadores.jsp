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
                <h1 class="mt-4">Lista de Jugadores del Plantel</h1>
                <div class="mb-3">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarJugadorModal">Agregar Jugador</button>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Fecha de Nacimiento</th>
                                <th>Nacionalidad</th>
                                <th>Posición</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Jugador 1</td>
                                <td>1990-01-01</td>
                                <td>Argentina</td>
                                <td>
                                    <select class="form-select">
                                        <option value="ARQ">ARQ</option>
                                        <option value="DEF">DEF</option>
                                        <option value="MED">MED</option>
                                        <option value="DEL">DEL</option>
                                    </select>
                                </td>
                                <td>
                                    <select class="form-select">
                                        <option value="Activo">Activo</option>
                                        <option value="Lesionado">Lesionado</option>
                                        <option value="Relegado">Relegado</option>
                                    </select>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editarJugadorModal">Editar</button>
                                    <button type="button" class="btn btn-danger">Eliminar</button>
                                </td>
                            </tr>
                            <!-- Aquí se pueden agregar más filas según la cantidad de jugadores -->
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
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarJugadorModalLabel">Agregar Jugador</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para agregar jugador -->
                    <form>
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre:</label>
                            <input type="text" class="form-control" id="nombre">
                        </div>
                        <div class="mb-3">
                            <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento:</label>
                            <input type="date" class="form-control" id="fechaNacimiento">
                        </div>
                        <div class="mb-3">
                            <label for="nacionalidad" class="form-label">Nacionalidad:</label>
                            <input type="text" class="form-control" id="nacionalidad">
                        </div>
                        <div class="mb-3">
                            <label for="posicion" class="form-label">Posición:</label>
                            <select class="form-select" id="posicion">
                                <option value="ARQ">ARQ</option>
                                <option value="DEF">DEF</option>
                                <option value="MED">MED</option>
                                <option value="DEL">DEL</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="estado" class="form-label">Estado:</label>
                            <select class="form-select" id="estado">
                                <option value="Activo">Activo</option>
                                <option value="Lesionado">Lesionado</option>
                                <option value="Relegado">Relegado</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

   
<!-- Modal para editar jugador -->
<div class="modal fade" id="editarJugadorModal" tabindex="-1" aria-labelledby="editarJugadorModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editarJugadorModalLabel">Editar Jugador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para editar jugador -->
                <form>
                    <!-- Campos prellenados con los datos del jugador a editar -->
                    <!-- Por ejemplo: nombre, fecha de nacimiento, nacionalidad, posición, etc. -->
                    <div class="mb-3">
                        <label for="nombreEditar" class="form-label">Nombre:</label>
                        <input type="text" class="form-control" id="nombreEditar">
                    </div>
                    <div class="mb-3">
                        <label for="fechaNacimientoEditar" class="form-label">Fecha de Nacimiento:</label>
                        <input type="date" class="form-control" id="fechaNacimientoEditar">
                    </div>
                    <div class="mb-3">
                        <label for="nacionalidadEditar" class="form-label">Nacionalidad:</label>
                        <input type="text" class="form-control" id="nacionalidadEditar">
                    </div>
                    <div class="mb-3">
                        <label for="posicionEditar" class="form-label">Posición:</label>
                        <select class="form-select" id="posicionEditar">
                            <option value="ARQ">ARQ</option>
                            <option value="DEF">DEF</option>
                            <option value="MED">MED</option>
                            <option value="DEL">DEL</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="estadoEditar" class="form-label">Estado:</label>
                        <select class="form-select" id="estadoEditar">
                            <option value="Activo">Activo</option>
                            <option value="Lesionado">Lesionado</option>
                            <option value="Relegado">Relegado</option>
                        </select>
                    </div>
                    <!-- Agrega más campos prellenados con otros atributos del jugador -->
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
