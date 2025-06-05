package Controller;

import Model.Pedido;
import Model.PedidoDAO;
import jakarta.servlet.http.HttpServlet;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "PedidoController", urlPatterns = {"/PedidoController"})
public class PedidoController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action == null) {
            // Procesar el formulario inicial
            String nombreCliente = request.getParameter("nombreCliente");
            String producto = request.getParameter("producto");
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            
            Pedido pedido = new Pedido(nombreCliente, producto, cantidad);
            request.setAttribute("pedido", pedido);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("realizarPedido.jsp");
            dispatcher.forward(request, response);
        } else if (action.equals("confirmar")) {
            // Confirmar el pedido y guardar en BD
            String nombreCliente = request.getParameter("nombreCliente");
            String producto = request.getParameter("producto");
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            
            Pedido pedido = new Pedido(nombreCliente, producto, cantidad);
            PedidoDAO pedidoDAO = new PedidoDAO();
            
            try {
                pedidoDAO.guardarPedido(pedido);
                request.setAttribute("pedido", pedido);
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("confirmacion.jsp");
                dispatcher.forward(request, response);
            } catch (Exception e) {
                request.setAttribute("errorMessage", e.getMessage());
                RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
                dispatcher.forward(request, response);
            }
        }
    }
}