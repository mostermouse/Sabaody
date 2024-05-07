package org.sabaody.domain.login.model;



public class Login{
    private String userid;
    private String password;

    public Login(String userid, String password) {
        this.userid = userid;
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
}
