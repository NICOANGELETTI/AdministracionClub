<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <style>
        /* Estilos para el formulario de login */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden; /* Evita el desplazamiento vertical */
        }
        body {
            font-family: sans-serif;
            background: linear-gradient(#141e30, #243b55);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }
        .login-box {
            position: relative;
            width: 400px;
            padding: 40px;
            background: rgba(0,0,0,.5);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
            color: #fff;
        }
        .login-box h2 {
            margin: 0 0 30px;
            padding: 0;
            text-align: center;
        }
        .login-box .user-box {
            position: relative;
        }
        .login-box .user-box input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            margin-bottom: 30px;
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            background: transparent;
        }
        .login-box .user-box label {
            position: absolute;
            top:0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
        }
        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #03e9f4;
            font-size: 12px;
        }
        .login-box button {
            width: 100%;
            padding: 10px 20px;
            font-size: 16px;
            background: #03e9f4;
            border: none;
            outline: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .login-box button:hover {
            background: #03c6c4;
        }
   /* Estilos para la imagen de la pelota */
.pelota-img {
    position: absolute;
    bottom: 50px; /* Ajusta la distancia desde abajo */
    left: 10px; /* Ajusta la distancia desde la izquierda */
    width: 200px; /* Ajusta el tamaño de la pelota */
  
    animation: caida 3s ease-in-out infinite; /* Animación de la caída */
}
@keyframes caida {
    0% { transform: translateY(-150%); }
    50% { transform: translateY(200%); }
    100% { transform: translateY(-130%); }
}
    </style>
</head>
<body>
    <div class="login-box">
        <!-- Imagen del logo -->
        <div style="text-align: center; margin-bottom: 20px;">
            <img src="https://i.ibb.co/PNcJQWg/logo-removebg-preview.png" alt="Logo de Admin Club" style="width: 150px;">
        </div>
        <!-- Título de la página -->
        <h2 style="text-align: center; color: #fff;">Login</h2>
        
        <!-- Formulario de login -->
        <form action="SvLogin" method="POST">
            <div class="user-box">
                <input type="text" name="nombreUsuario" required="">
                <label>Username</label>
            </div>
            <div class="user-box">
                <input type="password" name="password" required="">
                <label>Password</label>
            </div>
            <button id="openModalBtn" type="submit">Login</button>
        </form>
        
        <!-- Botón para registro -->
        <p style="text-align: center; color: #fff;">¿No tienes usuario?</p>
        <a href="crearUsuario.jsp" style="display: block; text-align: center; color: white; text-decoration: none;">Regístrate</a>
    </div>
    <!-- Imagen de la pelota -->
    <img src="https://i.ibb.co/bQ6ZQc4/pelota-Proyecto-Tres-removebg-preview.png" alt="Pelota" class="pelota-img">
</body>
</html>