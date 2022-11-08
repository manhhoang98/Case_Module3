package service;

import dao.CRUD_Account;
import dao.CRUD_Product;
import model.Account;
import model.Product;

import java.util.ArrayList;
import java.util.List;

public class AccountService {
    public static List<Account> accounts = CRUD_Account.getAllAccount();

    public static void addAccount(Account account){
        accounts.add(account);
        CRUD_Account.saveAccount(account);
    }

    public static void editAccount(String name, Account account){
        for (int i = 0; i < accounts.size(); i++) {
            if (accounts.get(i).getName().equals(name)){
                accounts.set(i, account);
            }
        }
    }

    public static void deleteAccount(String name){
        for (int i = 0; i < accounts.size(); i++) {
            if (accounts.get(i).getName().equals(name)){
                accounts.remove(i);
            }
        }
    }

}
