package tech.codingclub.helix.entity;

/**
 * Created by hackme on 2/7/18.
 */
public class Member extends MemberBase {

    public String name;
    public String email;
    public String role;
    public String password;
    public String image;
    public String token;
    public Boolean is_verified;
    public boolean is_followed;
    public boolean isIs_followed(){
        return is_followed;
    }
    public Long getId() {
        return id;
    }
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public Boolean getIs_verified() {
        return is_verified;
    }

    public String getImage() {
        return image;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public String getToken() {
        return token;
    }
}
