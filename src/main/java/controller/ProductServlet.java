package controller;


import dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;
import service.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        List<Category> categories= DAO.getAllCategory();
        req.setAttribute("sanphams", ProductService.products);
        req.setAttribute("listCG", categories);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/product.jsp");
        dispatcher.forward(req,resp);

    }
}
