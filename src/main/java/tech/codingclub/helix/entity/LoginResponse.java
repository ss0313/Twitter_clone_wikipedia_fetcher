package tech.codingclub.helix.entity;

import tech.codingclub.helix.entity.SignupResponse;

public class LoginResponse {

    public Long id;
    public String message;
    public Boolean is_loggedin;

    public LoginResponse(){}

    public LoginResponse(Long id, String message, Boolean is_loggedin) {
        this.id = id;
        this.message = message;
        this.is_loggedin = is_loggedin;
    }

}
