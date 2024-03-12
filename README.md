

## Admin Club <a href="https://www.java.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="java" width="50" height="50"/> </a> <a href="https://www.mysql.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="50" height="50"/> </a> 
Este proyecto consiste en un sistema de gestión para un equipo de fútbol, diseñado para ser utilizado principalmente por el personal administrativo. Permite la administración de jugadores, partidos, estadísticas y presupuesto del equipo.

### Funcionalidades Principales

- Administrar datos de jugadores y partidos: Permite agregar, editar y eliminar jugadores, así como programar, actualizar y cargar resultados y estadisticas de los partidos.
- Gestión de estadísticas: Analiza y visualiza estadísticas de los partidos, incluyendo goles, tarjetas y otras métricas relevantes de forma dinamica. Permite la gestión de goleadores y asistidores.
- Control de presupuesto: Gestiona el presupuesto del equipo, registrando compras y ventas de jugadores. Actualiza dinámicamente la lista de jugadores y el monto del presupuesto.

### Tecnologías Utilizadas
![Java](https://img.shields.io/badge/-Java-007396?style=flat&logo=java)
![MySQL](https://img.shields.io/badge/-MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/-Bootstrap-563D7C?style=flat&logo=bootstrap)
![HTML](https://img.shields.io/badge/-HTML-E34F26?style=flat&logo=html5&logoColor=white)
![CSS](https://img.shields.io/badge/-CSS-1572B6?style=flat&logo=css3)

### Arquitectura y Patrones de Diseño
Modelo-Vista-Controlador (MVC): La arquitectura sigue este patrón de diseño, separando claramente las responsabilidades entre la capa de presentación, la capa de lógica de negocio y la capa de control. Esto facilita el mantenimiento y la escalabilidad del sistema.
Persistencia de Datos con JPA: Se utiliza JPA (Java Persistence API) para interactuar con la base de datos MySQL, permitiendo una interacción fácil y robusta con los datos.

### Uso
Asegúrate de tener instalados los siguientes componentes:

Java 8
Maven
Entorno de desarrollo NetBeans
Servidor de aplicaciones Apache Tomcat

### Guía de Instalación
Clona el Repositorio desde GitHub:

Abre tu navegador web y visita la página del repositorio en GitHub.
Haz clic en el botón "Code" y selecciona "Download ZIP" para descargar el proyecto como un archivo ZIP en tu computadora.
Extrae el contenido del archivo ZIP descargado en una ubicación de tu elección en tu computadora.
Abre el Proyecto en NetBeans:

Abre NetBeans y selecciona File > Open Project... en el menú principal.
Navega hasta la ubicación donde extrajiste el proyecto y selecciona la carpeta que contiene el código de la aplicación para abrirlo en NetBeans.
Compila el Proyecto:

Haz clic derecho sobre el proyecto en el panel de proyectos y selecciona Clean and Build. Esto compilará el proyecto y generará un archivo WAR en el directorio target.
Ejecuta el Proyecto:

Haz clic derecho nuevamente sobre el proyecto en el panel de proyectos y selecciona Run para ejecutarlo en tu servidor de aplicaciones predeterminado.
Accede a la Aplicación:

Una vez que NetBeans haya desplegado la aplicación en tu servidor de aplicaciones, abre un navegador web y accede a la URL donde está alojada la aplicación. Por lo general, la URL será http://localhost:8080/AdministracionFutbol.
Acceso de Prueba

### Credenciales

- Usuario: admin
- Contraseña: 12345
- Nota: Es posible que experimentes demoras en la carga de información debido al servidor de pruebas. Por favor, ten paciencia.

### Diagrama UML
<p>Se adjunta un <a href="https://drive.google.com/file/d/1rkSuG_ZtOu3j8wCQxb1wvTukHvQvNbGu/view?usp=drive_link">diagrama UML</a> que muestra las relaciones entre las diferentes clases del sistema.</p>
