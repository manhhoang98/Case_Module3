package dao;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CRUD_Product {
    static Connection connection = Connect_MySql_Account.getConnectAccount();

    public static List<Product> getAll(){
        String sql = "Select * from product";
        List<Product> products = new ArrayList<>();
        try {
            // tạo cái xe để đưa câu lệnh sql qua CSDL
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String img = resultSet.getString("img");
                double price = resultSet.getDouble("price");
                int amount = resultSet.getInt("amount");
                String describe = resultSet.getString("describe");
                int id_category = resultSet.getInt("id_category");
                products.add(new Product(id,name,img, price,amount,describe,id_category));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }


    public static void save(Product product){
        try {
            String sql = "INSERT INTO `login_casestudy3`.`product` (`name`, `img`, `price`, `amount`, `describe`, `id_category`) VALUES (?, ?, ?, ?, ?, ?);";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getImg());
            preparedStatement.setDouble(3,product.getPrice());
            preparedStatement.setInt(4,product.getAmount());
            preparedStatement.setString(5, product.getDescribe());
            preparedStatement.setInt(6,product.getId_category());
            preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
