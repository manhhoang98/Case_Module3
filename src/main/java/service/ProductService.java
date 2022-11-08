package service;

import dao.CRUD_Product;
import dao.DAO;
import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    public static List<Product> products = CRUD_Product.getAll();

    public static void add(Product product){
        products.add(product);
        CRUD_Product.save(product);
    }

    public static void edit( Product product){
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == product.getId()){
                products.set(i, product);
            }
            DAO.updateProduct(product);
        }


    }

    public static void delete(int id){
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id){
                products.remove(i);
            }
        }

    }

}
