<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro</title>
    <style>
        /* Estilos para el formulario de registro */
        html {
            height: 100%;
        }
        body {
            margin:0;
            padding:0;
            font-family: sans-serif;
            background: linear-gradient(#141e30, #243b55);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .registro-box {
            width: 400px;
            padding: 40px;
            background: rgba(0,0,0,.5);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
            color: #fff;
        }

        .registro-box h2 {
            margin: 0 0 30px;
            padding: 0;
            text-align: center;
        }

        .registro-box .user-box {
            position: relative;
        }

        .registro-box .user-box input {
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

        .registro-box .user-box label {
            position: absolute;
            top:0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
        }

        .registro-box .user-box input:focus ~ label,
        .registro-box .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #03e9f4;
            font-size: 12px;
        }

        .registro-box button {
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

        .registro-box button:hover {
            background: #03c6c4;
        }
    </style>
</head>
<body>
    <div class="registro-box">
        <!-- Formulario de registro -->
        <h2>Registro</h2>
        <form action="registro.jsp" method="post">
            <div class="user-box">
                <input type="text" name="nombreClub" required>
                <label>Nombre del Club</label>
            </div>
            <div class="user-box">
                <input type="text" name="responsable" required>
                <label>Responsable</label>
            </div>
            <div class="user-box">
                <input type="text" name="nombreUsuario" required>
                <label>Nombre de Usuario </label>
            </div>
            <div class="user-box">
                <input type="password" name="password" required>
                <label>Contraseña</label>
            </div>
            <button type="submit">Registrarse</button>
            
        </form>
        <!-- Botón para volver al login -->
        <button onclick="window.location.href='login.jsp'" style="margin-top: 20px;">Volver al Login</button>
    </div>
</body>
</html>
