package dao;

import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
    public static Account login(String username , String password) {

        try {
            String sql = "select * from account where username =? and password =?";
            Connection connection = Connect_MySql_Account.getConnectAccount();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            Account account = null;
            if (resultSet.next()) {

                int id = resultSet.getInt("id");
                String username1 = resultSet.getString("username");
                String password1 = resultSet.getString("password");
                String name = resultSet.getString("name");
                String age = resultSet.getString("age");
                String gender = resultSet.getString("gender");
                String phonenumber = resultSet.getString("phonenumber");
                String address = resultSet.getString("address");
                String img = resultSet.getString("img");
                int id_role = resultSet.getInt("id_role");
                account = new Account(id, username1, password1, name,age,gender,phonenumber,address,img, id_role);

            }
            return account;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }
}
