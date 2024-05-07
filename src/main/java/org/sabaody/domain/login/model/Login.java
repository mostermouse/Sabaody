package org.sabaody.domain.login.model;

import org.sabaody.domain.user.model.attendancemanagement.IdEntity;

import java.util.Objects;

public class Login extends IdEntity {
    private String userid;
    private String password;

    public Login(){
        super(null);
    }

    public Login(String id, String password, String userid) {
        super(id);
        this.password = password;
        this.userid = userid;
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
