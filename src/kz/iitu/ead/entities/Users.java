package kz.iitu.ead.entities;

public class Users {

    private Long id;
    private String email;
    private String password;
    private String fullName;
    private String picture;

    public Users(Long id, String email, String password, String fullName, String picture) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.picture = picture;
    }

    public Users(){

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
