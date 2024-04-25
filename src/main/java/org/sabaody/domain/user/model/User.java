package org.sabaody.domain.user.model;

import db.user.enums.Contract;
import db.user.enums.UserStatus;

import java.util.Objects;

public class User {
    private Contract division; //구분
    private String id; //사원번호
    private String  name; //이름
    private String department; //부서

    private String birthday; //생년월일
    private String dateOfJoining; //입사일
    private String phone; //폰번호
    private String email; //이메일
    private UserStatus status; //재직상태
    public User(){}
    public User(String birthday, UserStatus status, String dateOfJoining, String department, Contract division, String email, String id, String name, String phone) {
        this.birthday = birthday;
        this.status = status;
        this.dateOfJoining = dateOfJoining;
        this.department = department;
        this.division = division;
        this.email = email;
        this.id = id;
        this.name = name;
        this.phone = phone;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getDateOfJoining() {
        return dateOfJoining;
    }

    public void setDateOfJoining(String dateOfJoining) {
        this.dateOfJoining = dateOfJoining;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Contract getDivision() {
        return division;
    }

    public void setDivision(Contract division) {
        this.division = division;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" +
                "birthday='" + birthday + '\'' +
                ", division=" + division +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", dateOfJoining='" + dateOfJoining + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", status=" + status +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        return division == user.division && Objects.equals(id, user.id) && Objects.equals(name, user.name) && Objects.equals(department, user.department) && Objects.equals(birthday, user.birthday) && Objects.equals(dateOfJoining, user.dateOfJoining) && Objects.equals(phone, user.phone) && Objects.equals(email, user.email) && status == user.status;
    }

    @Override
    public int hashCode() {
        return Objects.hash(division, id, name, department, birthday, dateOfJoining, phone, email, status);
    }
}
