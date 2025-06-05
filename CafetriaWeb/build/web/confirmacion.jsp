<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pedido Confirmado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 text-center">
                <!-- Icono de confirmación -->
                <div class="mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" fill="#28a745" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                    </svg>
                </div>
                
                <h1 class="mb-4 text-success">¡Pedido Confirmado!</h1>
                
                <div class="card border-success mb-4">
                    <div class="card-body">
                        <p class="lead">Gracias por tu pedido, <strong>${pedido.nombreCliente}</strong>.</p>
                        <p class="mb-0">Hemos registrado tu pedido de <strong>${pedido.cantidad} ${pedido.producto}(s)</strong>.</p>
                    </div>
                </div>
                
                <a href="index.jsp" class="btn btn-outline-success btn-lg">
                    Realizar otro pedido
                </a>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>