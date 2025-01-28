<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Generador de Número Aleatorio</title>
    
    <!-- Estilos CSS para la interfaz -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 40px;
            width: 300px;
            box-sizing: border-box;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .number {
            font-size: 48px;
            color: #4CAF50;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        .author {
            margin-top: 30px;
            font-size: 16px;
            color: #555;
            font-style: italic;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Generador de Número Aleatorio</h1>
        <div class="number">
            <c:choose>
                <c:when test="${not empty randomNumber}">
                    ${randomNumber}
                </c:when>
                <c:otherwise>
                    0
                </c:otherwise>
            </c:choose>
        </div>

        <form action="index.jsp" method="post">
            <button type="submit" class="button">Generar Número</button>
        </form>

        <div class="author">
            Autor: Agustín Canterla
        </div>
    </div>

    <%-- Generación del número aleatorio en el backend --%>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            int randomNumber = (int) (Math.random() * 100) + 1;  // Genera un número entre 1 y 100
            request.setAttribute("randomNumber", randomNumber);
        }
    %>

</body>
</html>
