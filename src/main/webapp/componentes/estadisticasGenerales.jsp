<%-- 
    Document   : estadisticasGenerales
    Created on : 12 mar 2024, 12:36:35
    Author     : nicoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <!-- Estadisticas Generales -->
                                    
                                    
                <div class="container-fluid text-center">
                    <% request.getRequestDispatcher("SvEstadisticas").include(request, response); %>
                    <div class="container-fluid">
                        <!-- Encabezado de Estadísticas Generales -->
                        <h1 class="mt-4" style="color: white;">Estadísticas de la Temporada</h1>
                        <div class="container-fluid">
                            <!-- Tabla de goles convertidos y tabla de goles recibidos -->
                            <div class="row">
                                <!-- Tabla de goles convertidos -->
                                <div class="col-md-6">
                                    <h2 style="color: white;">Goles Convertidos</h2>
                                    <div class="table-responsive">
                                        <table class="table table-striped" style="color: #fff;">
                                            <thead>
                                                <tr>
                                                    <th style="color: white;">Total de Goles</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                   <td style="color: white;"><%= request.getAttribute("golesConvertidos") %></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Fin de la tabla de goles convertidos -->
                                <!-- Tabla de goles recibidos -->
                                <div class="col-md-6">
                                    <h2 style="color: white;">Goles Recibidos</h2>
                                    <div class="table-responsive">
                                        <table class="table table-striped" style="color: #fff;">
                                            <thead>
                                                <tr>
                                                    <th style="color: white;">Total de Goles</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                   <td style="color: white;"><%= request.getAttribute("golesRecibidos") %></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Fin de la tabla de goles recibidos -->
                            </div>
                            <!-- Tabla de tarjetas -->
                            <div class="row">
                                <div class="col-md-6">
                                    <h2 style="color: white;">Tarjetas Provocadas(<%= request.getAttribute("tarjetasTotalProvocadas") %>)</h2>
                                    <div class="table-responsive">
                                        <table class="table table-striped" style="color: #fff;">
                                            <thead>
                                                <tr>
                                                    <th style="color: white;">Amarillas</th>
                                                    <th style="color: white;">Rojas</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                   <td style="color: white;"><%= request.getAttribute("tarjetasAmarillasProvocadas") %></td>
                                                   <td style="color: white;"><%= request.getAttribute("tarjetasRojasProvocadas") %></td>                        </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h2 style="color: white;">Tarjetas Recibidas(<%= request.getAttribute("tarjetasTotalRecibidas") %>)</h2>
                                    <div class="table-responsive">
                                        <table class="table table-striped" style="color: #fff;">
                                            <thead>
                                                <tr>
                                                    <th style="color: white;">Amarillas</th>
                                                    <th style="color: white;">Rojas</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                     <td style="color: white;"><%= request.getAttribute("tarjetasAmarillasRecibidas") %></td>
                                                   <td style="color: white;"><%= request.getAttribute("tarjetasRojasRecibidas") %></td> 
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Tabla de penales -->
                            <div class="row">
                                <div class="col-md-6">
                                    <h2 style="color: white;">Penales a Favor(<%= request.getAttribute("penalesTotalesPateados") %>)</h2>
                                    <div class="table-responsive">
                                        <table class="table table-striped" style="color: #fff;">
                                            <thead>
                                                <tr>
                                                    <th style="color: white;">Penales Convertidos</th>
                                                    <th style="color: white;">Penales Errados</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                   <td style="color: white;"><%= request.getAttribute("penalesConvertidos") %></td>
                                                   <td style="color: white;"><%= request.getAttribute("penalesErrados") %></td> 
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h2 style="color: white;">Penales en Contra(<%= request.getAttribute("penalesTotalesRecibidos") %>)</h2>
                                    <div class="table-responsive">
                                        <table class="table table-striped" style="color: #fff;">
                                            <thead>
                                                <tr>
                                                    <th style="color: white;">Penales Recibidos</th>
                                                    <th style="color: white;">Penales Atajados</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style="color: white;"><%= request.getAttribute("penalesRecibidos") %></td>
                                                   <td style="color: white;"><%= request.getAttribute("penalesAtajados") %></td> 
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Fin de la tabla de penales -->
                        </div>
                    </div>
                </div>