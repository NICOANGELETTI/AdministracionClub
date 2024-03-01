<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="componentes/header.jsp" %>
<body>
    <div class="d-flex" id="wrapper">

        <%@include file="componentes/sidebar.jsp" %>

        <!-- Mensaje de Alerta al realizar Operacion 
        <script>
            // Función para mostrar el mensaje de alerta
            function mostrarAlerta() {
                var mensaje = '<%= session.getAttribute("mensajeAlerta") %>';
                if (mensaje) {
                    alert(mensaje);
                    <% session.removeAttribute("mensajeAlerta"); %>
                }
            }

            // Llamar a la función al cargar la página
            window.onload = function() {
                mostrarAlerta();
            };
        </script>->

        <!-- Page content wrapper-->
        <div id="page-content-wrapper">
            <%@include file="componentes/navbar.jsp" %>

            <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Bienvenido a Admin Futbol de Fútbol</div>

                            <div class="card-body">
                                <p>Esta aplicación te permite gestionar varios aspectos relacionados con la administración de un club de fútbol.</p>
                                <p>Puedes acceder a las siguientes secciones:</p>
                                <ul>
                                    <li>Partidos: Gestiona los partidos programados. Carga estadísticas y resultados.</li>
                                    <li>Jugadores: Gestiona tu plantel. Agregando y eliminando jugadores.</li>
                                    <li>Estadísticas: Analiza y visualiza estadísticas de tus partidos. Gestiona a tus goleadores y asistidores.</li>
                                    <li>Presupuesto: Controla y gestiona el presupuesto de compras y ventas de tus jugadores.</li>
                                    <li>Ajustes: Carga el logo de tu club para tener una experiencia total.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
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
