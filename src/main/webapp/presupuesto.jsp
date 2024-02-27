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
                <h1 class="mt-4">Presupuesto Jugadores</h1>

                <!-- Cuadro grande con presupuesto total -->
                <div class="jumbotron mt-4" style="background-color: #1a2940;">
                    <h2 class="display-4">Presupuesto Total</h2>
                    <div class="d-flex justify-content-between align-items-center">
                        <p class="lead mb-0">$20,000,000 USD</p>
                    </div>
                </div>

                <!-- Botones para agregar ingreso y egreso -->
                <div class="row mt-4">
                    <div class="col-md-6">
<button type="button" class="btn btn-primary btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#agregarIngresoModal" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Agregar Ingreso</button>
                    </div>
                    <div class="col-md-6">
                        <button type="button" class="btn btn-danger btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#agregarEgresoModal" style="background-color: #ff0000; border-color: #ff0000;">Agregar Egreso</button>
                    </div>
                </div>

                <!-- Lista de transacciones realizadas -->
                <h2 class="mt-4">Transacciones Realizadas</h2>
                <div class="table-responsive" style="color: #fff;">
              <table class="table table-striped">
    <thead style="color: white;">
        <tr>
            <th>Nombre</th>
            <th>Monto</th>
            <th>Tipo</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="color: white;">Transacción 1</td>
            <td style="color: white;">$5,000,000 USD</td>
            <td style="color: white;">Ingreso</td>
        </tr>
        <tr>
            <td style="color: white;">Transacción 2</td>
            <td style="color: white;">$1,000,000 USD</td>
            <td style="color: white;">Egreso</td>
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
            <div class="modal-content" style="background-color: #1a2940; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarIngresoModalLabel">Agregar Ingreso</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="nombreJugador" class="form-label">Nombre del jugador</label>
                            <input type="text" class="form-control" id="nombreJugador" style="color: #fff;">
                        </div>
                        <div class="mb-3">
                            <label for="montoIngreso" class="form-label">Monto (USD)</label>
                            <input type="number" class="form-control" id="montoIngreso" style="color: #fff;">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #4a69bb; border-color: #4a69bb;">Cerrar</button>
                    <button type="button" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4;">Agregar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal para agregar egreso -->
    <div class="modal fade" id="agregarEgresoModal" tabindex="-1" aria-labelledby="agregarEgresoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #1a2940; color: #fff;">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarEgresoModalLabel">Agregar Egreso</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="nombreJugadorEgreso" class="form-label">Nombre del jugador</label>
                            <input type="text" class="form-control" id="nombreJugadorEgreso" style="color: #fff;">
                        </div>
                        <div class="mb-3">
                            <label for="montoEgreso" class="form-label">Monto (USD)</label>
                            <input type="number" class="form-control" id="montoEgreso" style="color: #fff;">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #4a69bb; border-color: #4a69bb;">Cerrar</button>
                    <button type="button" class="btn btn-primary" style="background-color: #ff0000; border-color: #ff0000;">Agregar</button>
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
