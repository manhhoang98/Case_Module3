package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Account;
import service.AccountService;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "createAccount", value = "/createAccount")
public class CreateAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String phoneNumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        String img = request.getParameter("img");
        int role = Integer.parseInt(request.getParameter("id_role"));
        AccountService.addAccount(new Account(id,username,password,name,age,gender,phoneNumber,address,img,role));

        response.sendRedirect("/login");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
