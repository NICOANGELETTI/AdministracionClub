<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Top navigation-->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #141e30;">
    <div class="container-fluid">
        <!-- Botón de menú -->
        <button class="btn btn-primary" id="sidebarToggle" style="background-color: #03e9f4; border-color: #03e9f4; color: #000;">Menu</button>


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
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown" style="background-color: #243b55;">
                        <a class="dropdown-item" href="ajustes.jsp" style="color: #fff;">Ajustes</a>
                        <div class="dropdown-divider" style="border-top-color: rgba(255, 255, 255, 0.1);"></div>
                        <a class="dropdown-item" href="#!" style="color: #fff;">Cerrar sesión</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<style>
    /* Estilos para el navbar */
    .navbar {
        background-color: #09141f !Important; /* Color de fondo */
    }

    .navbar-light .navbar-toggler {
        border-color: #fff; /* Color del botón de menú */
    }

    .navbar-light .navbar-toggler-icon {
        background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(255, 255, 255, 0.5)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
    }

    .navbar-light .navbar-toggler:focus, .navbar-light .navbar-toggler:hover {
        background-color: rgba(255, 255, 255, 0.1); /* Color de fondo al pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-link {
        color: #fff; /* Color del texto */
    }

    .navbar-light .navbar-nav .nav-link:hover {
        color: #03e9f4; /* Color del texto al pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu {
        background-color: #243b55; /* Color de fondo del menú desplegable */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item {
        color: #fff; /* Color del texto del menú desplegable */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item:hover {
        background-color: #03e9f4; /* Color de fondo del ítem del menú desplegable al pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-divider {
        border-top-color: rgba(255, 255, 255, 0.1); /* Color de la línea divisoria del menú desplegable */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item:focus, .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item:hover {
        color: #fff; /* Color del texto del ítem del menú desplegable al enfocar o pasar el ratón */
        background-color: rgba(255, 255, 255, 0.1); /* Color de fondo del ítem del menú desplegable al enfocar o pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.active {
        color: #fff; /* Color del texto del ítem activo del menú desplegable */
        background-color: rgba(255, 255, 255, 0.1); /* Color de fondo del ítem activo del menú desplegable */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.active:focus, .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.active:hover {
        color: #fff; /* Color del texto del ítem activo del menú desplegable al enfocar o pasar el ratón */
        background-color: rgba(255, 255, 255, 0.1); /* Color de fondo del ítem activo del menú desplegable al enfocar o pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.disabled {
        color: rgba(255, 255, 255, 0.5); /* Color del texto del ítem deshabilitado del menú desplegable */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.disabled:hover {
        color: rgba(255, 255, 255, 0.5); /* Color del texto del ítem deshabilitado del menú desplegable al pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.disabled:focus, .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.disabled:hover {
        background-color: transparent; /* Color de fondo del ítem deshabilitado del menú desplegable al enfocar o pasar el ratón */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.active.disabled {
        color: rgba(255, 255, 255, 0.5); /* Color del texto del ítem activo deshabilitado del menú desplegable */
    }

    .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.active.disabled:focus, .navbar-light .navbar-nav .nav-item.dropdown .dropdown-menu .dropdown-item.active.disabled:hover {
        background-color: transparent; /* Color de fondo del ítem activo deshabilitado del menú desplegable al enfocar o pasar el ratón */
    }
</style>
