package controller;

import dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/cart")
public class CartServlet extends HttpServlet {
    List<Product> productList;

    public void init() throws  ServletException{
        productList = new ArrayList<>();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        int id = Integer.parseInt(req.getParameter("id"));


        if (action ==null){
            action ="";
        }

        switch (action){
            case "delete":
                for (int i = 0; i < productList.size(); i++) {
                    if (productList.get(i).getId()==id){
                        productList.remove(i);
                    }
                }
                break;
            default:
                Product product = DAO.getProductById(id);
                if (product != null){
                    productList.add(product);
                }

        }
        req.setAttribute("cart",productList);
        req.setAttribute("allprice",Allprice());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(req,resp);
    }

    public  double Allprice(){
        double sum = 0;
        for (Product p: productList) {
            sum+= p.getPrice();
        }
        return sum;
    }
}
