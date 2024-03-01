<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error de inicio de sesión</title>
    <style>
        /* Estilos para la página de error */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden; /* Evita el desplazamiento vertical */
            background: linear-gradient(#141e30, #243b55);
            font-family: sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
        .error-box {
            text-align: center;
            padding: 20px;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        }
        .error-box h2 {
            margin: 0;
            padding: 0;
            font-size: 24px;
            margin-bottom: 10px; /* Reducido el margen inferior */
        }
        .error-box p {
            margin: 0;
            padding: 0;
            font-size: 18px;
            margin-bottom: 20px; /* Aumentado el margen inferior */
        }
        .back-btn {
            margin-top: 30px; /* Aumentado el margen superior */
            background: #03e9f4;
            border: none;
            outline: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
            text-decoration: none;
            color: #fff;
        }
        .back-btn:hover {
            background: #03c6c4;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>Error de inicio de sesión</h2>
        <p>El nombre de usuario o la contraseña son incorrectos.</p>
        <a href="login.jsp" class="back-btn">Volver al inicio de sesión</a>
    </div>
</body>
</html>
