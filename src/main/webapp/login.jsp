<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="componentes/header.jsp" %>
<body style="background-image: url('https://i.ibb.co/TbnHFQP/pexels-pixabay-46798.jpg'); background-repeat: no-repeat; background-size: cover;">

    <div class="d-flex" id="wrapper">

        <%@include file="componentes/sidebar.jsp" %>

        <!-- Mensaje de Alerta al realizar Operacion 
        <script>
            // Función para mostrar el mensaje de alerta
            function mostrarAlerta() {
                var mensaje = '<%= session.getAttribute("mensajeAlerta")%>';
                if (mensaje) {
                    alert(mensaje);
        <% session.removeAttribute("mensajeAlerta");%>
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
                        <div style="text-align: center; margin-bottom: 10px;">
                            <img id="escudo" src="https://i.ibb.co/PNcJQWg/logo-removebg-preview.png" alt="Logo de Admin Club" style="width: 120px;">
                        </div>
                        <div class="card" style="background-color: rgba(0, 51, 102, 0.8); color: white;">

                            <div class="card-header" style="background-color: #003366;">Bienvenido a Admin Futbol</div>

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
    <script>
        // Función para agregar animación al escudo
        window.onload = function() {
            var escudo = document.getElementById('escudo');
            escudo.style.transition = 'transform 1s ease-in-out';
            escudo.style.transform = 'rotate(15deg)'; // Inicia la rotación
            setTimeout(function() {
                escudo.style.transform = 'rotate(-15deg)'; // Rotación de vuelta
                setTimeout(function() {
                    escudo.style.transform = 'rotate(0deg)'; // Rotación final centrada
                }, 1000); // Duración de cada rotación (1000ms = 1 segundo)
            }, 1000); // Tiempo de espera antes de iniciar la rotación de vuelta
        };
    </script>
</body>
</html>
