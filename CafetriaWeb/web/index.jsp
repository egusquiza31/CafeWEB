<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cafetería - Realizar Pedido</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4"> <!-- Agregué mt-4 para margen superior -->
        <h1 class="mb-4">Realizar Pedido</h1>
        <form action="PedidoController" method="post">
            <div class="mb-3"> <!-- Clase mb-3 para separación -->
                <label for="nombreCliente" class="form-label">Nombre del Cliente:</label>
                <input type="text" class="form-control" id="nombreCliente" name="nombreCliente" required>
            </div>
            
            <div class="mb-3">
                <label for="producto" class="form-label">Producto:</label>
                <select class="form-select" id="producto" name="producto" required> <!-- form-select para estilizar -->
                    <option value="">Seleccione un producto</option>
                    <option value="Café">Café</option>
                    <option value="Capuchino">Capuchino</option>
                    <option value="Latte">Latte</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="cantidad" class="form-label">Cantidad:</label>
                <input type="number" class="form-control" id="cantidad" name="cantidad" min="1" required>
            </div>
            
            <button type="submit" class="btn btn-primary">Realizar Pedido</button> <!-- btn btn-primary para estilo Bootstrap -->
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>