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
                <h1 class="mt-4">Esta es la página de Ajustes</h1>

                <p class="mt-4" style="color: #fff;">Suba la imagen del escudo de su equipo:</p>
                <!-- Formulario para subir la imagen del equipo -->
                <form action="upload_image.jsp" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="imageFile" class="form-label" style="color: #fff;">Seleccione un archivo JPG:</label>
                        <input type="file" class="form-control" id="imageFile" name="imageFile" accept=".jpg">
                    </div>
                    <button type="submit" class="btn btn-primary" style="background-color: #03e9f4; border-color: #03e9f4; color: black;">Subir Imagen</button>
                </form>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
