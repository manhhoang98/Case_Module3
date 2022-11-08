package controller;

import dao.DAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Product;
import service.ProductService;

import java.io.IOException;

@WebServlet(name = "edit", value = "/edit")
public class EditProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        for (Product p: ProductService.products) {
            if (p.getId() == id){
                req.setAttribute("sanpham", p);
            }
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/editproduct.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String img = req.getParameter("img");
        double price = Double.parseDouble(req.getParameter("price"));
        int amount = Integer.parseInt(req.getParameter("amount"));
        String describe = req.getParameter("describe");
        int id_category = Integer.parseInt(req.getParameter("id_category"));
        ProductService.edit(new Product(id,name,img,price,amount,describe,id_category));
        resp.sendRedirect("/managerproduct");
    }
}
