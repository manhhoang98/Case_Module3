package model;

public class Account {
    private  int id;
    private String username;
    private String password;
    private String name;
    private String age;
    private String gender;
    private String PhoneNumber;
    private String address;
    private String img;

    private int id_role;



    public Account() {
    }


    public Account(int id, String username, String password, String name, String age, String gender, String phoneNumber, String address, String img, int id_role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.age = age;
        this.gender = gender;
        PhoneNumber = phoneNumber;
        this.address = address;
        this.img = img;
        this.id_role = id_role;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }


    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId_role() {
        return id_role;
    }

    public int setRole(int id_role) {
        this.id_role = id_role;
        return id_role;
    }


}
