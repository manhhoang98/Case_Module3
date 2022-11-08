package dao;

import model.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CRUD_Account {
    static Connection connection = Connect_MySql_Account.getConnectAccount();



    public static List<Account> getAllAccount(){
        String listAccount= "Select * from account";
        List<Account> accounts = new ArrayList<>();
        try{
            Statement statementAccount = connection.createStatement();
            ResultSet resultSetAccount = statementAccount.executeQuery(listAccount);
            while (resultSetAccount.next()){

                int id = resultSetAccount.getInt("id");
                String username = resultSetAccount.getString("username");
                String password = resultSetAccount.getString("password");
                String name = resultSetAccount.getString("name");
                String age = resultSetAccount.getString("age");
                String gender = resultSetAccount.getString("gender");
                String phoneNumber = resultSetAccount.getString("phoneNumber");
                String address = resultSetAccount.getString("address");
                String img = resultSetAccount.getString("img");
                int role = resultSetAccount.getInt("id_role");
                accounts.add(new Account(id,username,password,name,age,gender,phoneNumber,address,img,role));

            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return accounts;
    }

    public static void saveAccount(Account account) {

        try {
            String listAccount = "INSERT INTO `login_casestudy3`.`account` ( `username`, `password`, `name`, `age`, `gender`, `phonenumber`, `address`, `img`, `id_role`) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement preparedStatementAccount = connection.prepareStatement(listAccount);
            preparedStatementAccount.setString(1,account.getUsername());
            preparedStatementAccount.setString(2,account.getPassword());
            preparedStatementAccount.setString(3,account.getName());
            preparedStatementAccount.setString(4,account.getAge());
            preparedStatementAccount.setString(5,account.getGender());
            preparedStatementAccount.setString(6,account.getPhoneNumber());
            preparedStatementAccount.setString(7,account.getAddress());
            preparedStatementAccount.setString(8,account.getImg());
            preparedStatementAccount.setInt(9,account.getId_role());
            preparedStatementAccount.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
