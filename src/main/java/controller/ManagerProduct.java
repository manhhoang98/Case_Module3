package controller;

import dao.CRUD_Product;
import dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProductService;

import java.io.IOException;

@WebServlet(urlPatterns = "/managerproduct")
public class ManagerProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        req.setAttribute("sanphams", CRUD_Product.getAll());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/managerproduct.jsp");
        dispatcher.forward(req,resp);

    }
}
