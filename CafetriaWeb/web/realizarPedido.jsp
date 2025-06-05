<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resumen del Pedido</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="text-center mb-4">Resumen del Pedido</h1>
                
                <div class="card mb-4">
                    <div class="card-header bg-light">
                        <h5 class="card-title mb-0">Detalles del Pedido</h5>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <strong>Cliente:</strong> ${pedido.nombreCliente}
                        </li>
                        <li class="list-group-item">
                            <strong>Producto:</strong> ${pedido.producto}
                        </li>
                        <li class="list-group-item">
                            <strong>Cantidad:</strong> ${pedido.cantidad}
                        </li>
                    </ul>
                </div>
                
                <form action="PedidoController" method="post">
                    <input type="hidden" name="action" value="confirmar">
                    <input type="hidden" name="nombreCliente" value="${pedido.nombreCliente}">
                    <input type="hidden" name="producto" value="${pedido.producto}">
                    <input type="hidden" name="cantidad" value="${pedido.cantidad}">
                    
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-success btn-lg">Confirmar Pedido</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>