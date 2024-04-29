package org.sabaody.domain.user.model.vacationinquiry;


import db.user.enums.Contract;

import java.util.List;

public class VacationInquiry {
    private Contract division; //区分
    private String id; //社員番号
    private String  name; //名前
    private String department; //部署
    private String position; //　ポジション

    private List<VacationType> vacationTypes; // 休暇全体
    private int usedVacationDays; // 使用した休暇
    private int remainingVacationDays; // 残余休暇数
    public VacationInquiry(){}
    public VacationInquiry(String department, Contract division, String id, String name, String position, int remainingVacationDays, int usedVacationDays, List<VacationType> vacationTypes) {
        this.department = department;
        this.division = division;
        this.id = id;
        this.name = name;
        this.position = position;
        this.remainingVacationDays = remainingVacationDays;
        this.usedVacationDays = usedVacationDays;
        this.vacationTypes = vacationTypes;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getRemainingVacationDays() {
        return remainingVacationDays;
    }

    public void setRemainingVacationDays(int remainingVacationDays) {
        this.remainingVacationDays = remainingVacationDays;
    }

    public int getUsedVacationDays() {
        return usedVacationDays;
    }

    public void setUsedVacationDays(int usedVacationDays) {
        this.usedVacationDays = usedVacationDays;
    }

    public List<VacationType> getVacationTypes() {
        return vacationTypes;
    }

    public void setVacationTypes(List<VacationType> vacationTypes) {
        this.vacationTypes = vacationTypes;
    }

    @Override
    public String toString() {
        return "VacationInquiry{" +
                "department='" + department + '\'' +
                ", division=" + division +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", position='" + position + '\'' +
                ", vacationTypes=" + vacationTypes +
                ", usedVacationDays=" + usedVacationDays +
                ", remainingVacationDays=" + remainingVacationDays +
                '}';
    }
}

