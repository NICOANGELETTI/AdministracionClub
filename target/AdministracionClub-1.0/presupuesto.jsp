<%@page import="logica.Presupuesto"%>
<%@page import="logica.ControladoraLogica"%>
<%@page import="logica.Jugador"%>
<%@page import="java.util.List"%>
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
              

                <!-- Cuadro grande con presupuesto total -->
                <div class="jumbotron mt-4" style="background-color: #1a2940;">
                    <h2 class="display-4">Presupuesto Total</h2>
                  <div class="d-flex justify-content-between align-items-center">
    <%
        // Invocar al método calcularTotalPresupuesto de tu controlador lógico
        
        ControladoraLogica control = new ControladoraLogica();
        int montoTotal = control.calcularPresupuestoTotal();
    %>
    <p class="lead mb-0"> <%= montoTotal != 0 ? montoTotal : "Presupuesto no disponible" %></p>
  <!-- Advertencia -->
        <div class="alert alert-warning" role="alert">
            <strong>¡Atencion!</strong> Todas los Ingresos / Egresos de jugadores se vera impactado en tu monto para realizar Compra de jugadores
        </div>
</div>
                </div>


                <!-- Botones para agregar ingreso y egreso -->
<div class="row mt-4">
    <div class="col-md-6">
        <button type="button" class="btn btn-danger btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#agregarTransaccionModal">Venta de Jugador</button>
    </div>
<div class="col-md-6">
    <button type="button" class="btn btn-success btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#agregarIngresoModal">Compra de Jugador</button>
</div>


</div>

                
                
                
                
              
                <!-- Lista de transacciones realizadas -->
                <h2 class="mt-4">Operaciones Realizadas</h2>
                <div class="table-responsive" style="color: #fff;">
                    <table class="table table-striped">
                        <thead style="color: white;">
                            <tr>
                                <th>Nº Operacion</th>
                                <th>Monto</th>
                                <th>Tipo</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                           <%    // Gracias a esto magicamente se mostro la listaMovientos
                                    request.getRequestDispatcher("SvPresupuesto").include(request, response);
                                     request.getRequestDispatcher("SvCompraJugador").include(request, response);

                                %>            
                            
            <% 
               
                
                List<Presupuesto> listaMovimientos = (List) request.getSession().getAttribute("listaMovimientos");
            if (listaMovimientos != null && !listaMovimientos.isEmpty()) {
                for (Presupuesto movimiento : listaMovimientos) { %>
                    <tr>
                        
                      
                        <td style="color: white;">###<%= movimiento.getIdPresupuesto() %></td>
                        <td style="color: white;"><%= movimiento.getMonto() %></td>
                        <td style="color: white;"><%= movimiento.getTipo_transaccion() %></td>
                    </tr>
                <% }
            } else { %>
                <tr>
                    <td colspan='3' style='color: #fff;'>No hay Presupuestos en tu club</td>
                </tr>
            <% } %>
        </tbody>
                            
                    </table>
                </div>
            </div>
        </div>
    </div>

            
            





<!-- Modal para agregar Egreso -->
<div class="modal fade" id="agregarIngresoModal" tabindex="-1" aria-labelledby="agregarIngresoModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="background-color: #1a2940; color: #fff;">
            <div class="modal-header">
                <h5 class="modal-title" id="agregarIngresoModalLabel">Agregar Nuevo Jugador al Plantel</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Contenido del formulario para agregar ingreso -->
                <form  action="SvCompraJugador" method="POST">
                
                    <!-- Campo de monto (USD) -->
                    <div class="mb-3">
                        <label for="montoEgreso" class="form-label">Monto (USD)</label>
                        <input type="number" class="form-control" id="montoEgreso" name="montoEgreso">
                    </div>

                    <!-- Checkbox para ingresar como jugador libre o sin cargo -->
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="jugadorLibreCheckbox" onchange="actualizarMonto()">
                        <label class="form-check-label" for="jugadorLibreCheckbox">
                            Ingresa como jugador libre o sin cargo
                        </label>
                    </div>

                    <script>
                        function actualizarMonto() {
                            var montoInput = document.getElementById('montoEgreso');
                            var checkbox = document.getElementById('jugadorLibreCheckbox');

                            if (checkbox.checked) {
                                montoInput.value = 0;
                                montoInput.disabled = true;
                            } else {
                                montoInput.disabled = false;
                            }
                        }
                    </script>

                    <!-- Selección del tipo de transacción -->
                    <div class="mb-3">
                        <label for="tipoOperacion" class="form-label">Tipo de transacción</label>
                        <select name="tipoOperacion" class="form-select" id="Egreso" style="color: #000; background-color: #fff;">
                            <option value="Egreso" style="color: black;">Egreso</option>
                        </select>
                    </div>

                    <!-- Formulario para agregar jugador -->
                    <div class="alert alert-success mt-2" role="alert">
                        Ingrese los datos del nuevo jugador de tu plantel
                    </div>
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre del Nuevo Jugador:</label>
                        <input type="text" name="nombre" class="form-control" id="nombre" style="color: #000;">
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

                    <!-- Botones de acción -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #4a69bb; border-color: #4a69bb;">Cerrar</button>
                        <button type="submit" class="btn btn-danger" style="background-color: #ff0000; border-color: #ff0000;">Agregar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



            
            
<!-- Modal para Venta de jugador (Ingreso) -->
<div class="modal fade" id="agregarTransaccionModal" tabindex="-1" aria-labelledby="agregarTransaccionModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="background-color: #1a2940; color: #fff;">
            <div class="modal-header">
                <h5 class="modal-title" id="agregarTransaccionModalLabel">Venta Jugador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%    // Llamar a los servlets para obtener las listas de jugadores
                    request.getRequestDispatcher("SvJugadores").include(request, response);
                %> 

                <form action="SvPresupuesto" method="POST">
                    <div class="mb-3">
                        <label for="nombreJugador" class="form-label">Nombre del jugador</label>
                        <select name="idJugadorVenta" class="form-select" id="idJugadorVenta" style="color: #000; background-color: #fff;">
                            <% List<Jugador> listaJugadores = (List) request.getSession().getAttribute("listaJugadores");
                                if (listaJugadores != null && !listaJugadores.isEmpty()) {
                                    for (Jugador jugador : listaJugadores) { %>
                                        <option value="<%= jugador.getIdJugador()%>"><%= jugador.getNombre()%></option>
                            <%      }
                                }
                            %>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="montoIngreso" class="form-label">Monto (USD)</label>
                        <input name="montoIngreso" type="number" class="form-control" id="montoIngreso" >
                    </div>

                    <div class="mb-3">
                        <label for="tipoOperacion" class="form-label">Tipo de transacción</label>
                        <select name="tipoOperacion" class="form-select" id="Ingreso" style="color: #000; background-color: #fff;">
                            <option value="Ingreso" style="color: black;">Ingreso</option>
                        </select>
                    </div>

                           <!-- Advertencia -->
                    <div class="alert alert-warning" role="alert">
                        Recuerda que si vendes a un jugador, este se borrará de tu lista de jugadores del plantel
                    </div>
                        
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #4a69bb; border-color: #4a69bb;">Cerrar</button>
                        <button type="submit" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4;">Agregar</button>
                    </div>                </form>
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
