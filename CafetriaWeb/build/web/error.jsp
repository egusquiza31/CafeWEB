<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container">
        <h1>Error</h1>
        <p>Ha ocurrido un error al procesar tu pedido.</p>
        <p>${errorMessage}</p>
        <a href="index.jsp" class="btn-link">Volver al inicio</a>
    </div>
</body>
</html>