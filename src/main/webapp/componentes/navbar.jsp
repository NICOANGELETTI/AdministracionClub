<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Top navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
    <div class="container-fluid">
    

        <!-- Botón de menú -->
        <button class="btn btn-primary" id="sidebarToggle">Menu</button>

        <!-- Botón de navegación desplegable -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Contenido del menú desplegable -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="https://latinfootballshop.es/cdn/shop/products/5Detalle6.jpg?v=1688237751&width=1445" alt="Imagen de perfil" class="rounded-circle" style="width: 32px; height: 32px;">
                    </a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="ajustes.jsp">Ajustes</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#!">Cerrar sesión</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
