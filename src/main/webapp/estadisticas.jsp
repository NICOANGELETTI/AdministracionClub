<%@page import="logica.Asistidor"%>
<%@page import="logica.Goleador"%>
<%@page import="logica.Jugador"%>
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
                <h1 class="mt-4">Estadisticas de la Temporada</h1>

           
                
                
                
                
                
                
                
                <%@include file="componentes/tablaGoleadores.jsp" %>

                
               <%@include file="componentes/tablaAsistidores.jsp" %>

               
               <%@include file="componentes/estadisticasGenerales.jsp" %>
                
                
             
             
                                    
                                    
                                    
                                    
           
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="js/scripts.js"></script>
            </body>
        </html> 