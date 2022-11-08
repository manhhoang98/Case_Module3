package dao;

import model.Category;
import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static dao.CRUD_Account.connection;

public class DAO {

    public static Product getProductById(int id){
        String sql = "SELECT * FROM login_casestudy3.product where id = ?";
        try {
            // tạo cái xe để đưa câu lệnh sql qua CSDL
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, String.valueOf(id));
            ResultSet resultSet = ps.executeQuery();

            if (resultSet.next()){
                return new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getInt(7));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public static List<Product> getProductByCID(String cid){
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM login_casestudy3.product where id_category = ?";
        try {
            // tạo cái xe để đưa câu lệnh sql qua CSDL
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()){
                products.add( new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getInt(7)));
            }return products;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    public static List<Category> getAllCategory(){
        String sql = "Select * from category";
        List<Category> categories = new ArrayList<>();
        try {
            // tạo cái xe để đưa câu lệnh sql qua CSDL
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()){
                categories.add(new Category(
                        resultSet.getInt(1),
                        resultSet.getString(2)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return categories;
    }

    public static void updateProduct(Product product) {
        try {
            String sql = "UPDATE product SET id = ?, namet = ?, img = ?, price = ?, amount = ?, describe = ?, id_category = ?,  = ? WHERE (id= ?)";
            Connection connection = Connect_MySql_Account.getConnectAccount();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, product.getId());
            preparedStatement.setString(2, product.getName());
            preparedStatement.setString(3, product.getImg());
            preparedStatement.setDouble(4, product.getPrice());
            preparedStatement.setInt(5, product.getAmount());
            preparedStatement.setString(6, product.getDescribe());
            preparedStatement.setInt(7, product.getId_category());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void deleteProduct(int id) {
        try {
            String sql = "DELETE FROM  product  WHERE (id= ?)";
            Connection connection = Connect_MySql_Account.getConnectAccount();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void editProduct(Product product) {
        try{
            String sql = "UPDATE `login_casestudy3`.`product` SET `id`=?, `name` = ?, `img` = ?, `price` = ?, `amount` = ?, `describe` = ?, `id_category` = ? WHERE (`id` = ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,product.getId());
            preparedStatement.setString(2, product.getName());
            preparedStatement.setString(3, product.getImg());
            preparedStatement.setDouble(4,product.getPrice());
            preparedStatement.setInt(5,product.getAmount());
            preparedStatement.setString(6,product.getDescribe());
            preparedStatement.setInt(7,product.getId_category());
            preparedStatement.execute();
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
