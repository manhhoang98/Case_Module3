package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect_MySql_Account {
    public static Connection getConnectAccount() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/login_casestudy3";
            String username = "root";
            String pass = "Manh@0811";
            return DriverManager.getConnection(url, username, pass);
        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
