package Model;

public class Pedido {
    
    private String nombreCliente;
    private String producto;
    private int cantidad;

    public Pedido() {
    }

    public Pedido(String nombreCliente, String producto, int cantidad) {
        this.nombreCliente = nombreCliente;
        this.producto = producto;
        this.cantidad = cantidad;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
}
