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
                <h1 class="mt-4">Presupuesto Jugadores</h1>

                <!-- Cuadro grande con presupuesto total -->
                <div class="jumbotron mt-4">
                    <h2 class="display-4">Presupuesto Total</h2>
                    <div class="d-flex justify-content-between align-items-center">
                        <p class="lead mb-0">$20,000,000 USD</p>
                    </div>
                </div>

                <!-- Botones para agregar ingreso y egreso -->
                <div class="row mt-4">
                    <div class="col-md-6">
                        <button type="button" class="btn btn-primary btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#agregarIngresoModal">Agregar Ingreso</button>
                    </div>
                    <div class="col-md-6">
                        <button type="button" class="btn btn-danger btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#agregarEgresoModal">Agregar Egreso</button>
                    </div>
                </div>

                <!-- Lista de transacciones realizadas -->
                <h2 class="mt-4">Transacciones Realizadas</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Monto</th>
                                <th>Tipo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Transacción 1</td>
                                <td>$5,000,000 USD</td>
                                <td>Ingreso</td>
                            </tr>
                            <tr>
                                <td>Transacción 2</td>
                                <td>$1,000,000 USD</td>
                                <td>Egreso</td>
                            </tr>
                            <!-- Agrega más filas según sea necesario -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para agregar ingreso -->
    <div class="modal fade" id="agregarIngresoModal" tabindex="-1" aria-labelledby="agregarIngresoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarIngresoModalLabel">Agregar Ingreso</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="nombreJugador" class="form-label">Nombre del jugador</label>
                            <input type="text" class="form-control" id="nombreJugador">
                        </div>
                        <div class="mb-3">
                            <label for="montoIngreso" class="form-label">Monto (USD)</label>
                            <input type="number" class="form-control" id="montoIngreso">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Agregar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para agregar egreso -->
    <div class="modal fade" id="agregarEgresoModal" tabindex="-1" aria-labelledby="agregarEgresoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarEgresoModalLabel">Agregar Egreso</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="nombreJugadorEgreso" class="form-label">Nombre del jugador</label>
                            <input type="text" class="form-control" id="nombreJugadorEgreso">
                        </div>
                        <div class="mb-3">
                            <label for="montoEgreso" class="form-label">Monto (USD)</label>
                            <input type="number" class="form-control" id="montoEgreso">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Agregar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
