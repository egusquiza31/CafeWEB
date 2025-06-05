package Model;

import java.sql.*;
import util.DatabaseUtil;

public class PedidoDAO {
    public void guardarPedido(Pedido pedido) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        
        try {
            connection = DatabaseUtil.getConnection();
            String sql = "INSERT INTO pedidos (nombre_cliente, producto, cantidad, fecha_pedido) VALUES (?, ?, ?, NOW())";
            
            statement = connection.prepareStatement(sql);
            statement.setString(1, pedido.getNombreCliente());
            statement.setString(2, pedido.getProducto());
            statement.setInt(3, pedido.getCantidad());
            
            statement.executeUpdate();
        } finally {
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }
    }
}