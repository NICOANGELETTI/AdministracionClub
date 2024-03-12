

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



### Front-end
El front-end de la aplicación se desarrolló utilizando JSP (JavaServer Pages) para la generación dinámica de contenido HTML. Se combinó HTML con JSP scriptlets para crear páginas web dinámicas adaptadas a las necesidades del usuario y los datos del servidor. Además, se utilizó Bootstrap para mejorar el diseño y la apariencia de la interfaz de usuario, aprovechando sus componentes y estilos predefinidos. La integración de una plantilla predefinida de Bootstrap facilitó el desarrollo y aseguró la consistencia del diseño en todo el sistema. Esta combinación de tecnologías proporcionó una interfaz de usuario atractiva y receptiva para los usuarios del sistema.

### Back-end
El back-end de la aplicación se desarrolló principalmente con Java y Servlets para manejar las solicitudes y generar respuestas dinámicas. Para la persistencia de datos, se utilizó MySQL como base de datos, con JPA (Java Persistence API) como unidad de persistencia para interactuar con la base de datos alojada en Clever Cloud.

La arquitectura sigue el patrón de diseño Modelo-Vista-Controlador (MVC), donde se separan claramente las responsabilidades entre la capa de presentación (Vista), la capa de lógica de negocio (Modelo) y la capa de control (Controlador). Esta separación facilita el mantenimiento y la escalabilidad del sistema.

La capa de lógica de persistencia se encarga de gestionar los datos y la lógica de negocio de la aplicación. JPA se utiliza para mapear objetos Java a entidades de la base de datos y proporcionar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) de manera eficiente. Esto permite una interacción fácil y robusta con la base de datos, asegurando la integridad y consistencia de los datos.



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
