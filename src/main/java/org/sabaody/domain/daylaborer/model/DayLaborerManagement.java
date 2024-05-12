package org.sabaody.domain.daylaborer.model;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;

import java.sql.Date;


public class DayLaborerManagement extends EmploymentInfo {
    private String project; // 労働者を識別する現場
    private Date startDate; // 労働開始日
    private Double dailyRate; // 日額支払率
    private Double incomeTax; // 所得税
    private Double localIncomeTax; // 地方所得税
    private Double netPay; // 実支給額

    public DayLaborerManagement(){}

    public DayLaborerManagement(Double dailyRate, Double incomeTax, Double localIncomeTax, Double netPay, String project, Date startDate) {
        this.dailyRate = dailyRate;
        this.incomeTax = incomeTax;
        this.localIncomeTax = localIncomeTax;
        this.netPay = netPay;
        this.project = project;
        this.startDate = startDate;
    }

    public DayLaborerManagement(String address, String dateofjoining, String email, String phonenumber, Double dailyRate, Double incomeTax, Double localIncomeTax, Double netPay, String project, Date startDate) {
        super(address, dateofjoining, email, phonenumber);
        this.dailyRate = dailyRate;
        this.incomeTax = incomeTax;
        this.localIncomeTax = localIncomeTax;
        this.netPay = netPay;
        this.project = project;
        this.startDate = startDate;
    }

    public DayLaborerManagement(String id, String attendanceRecord, String department, String division, String name, String position, String address, String dateofjoining, String email, String phonenumber, Double dailyRate, Double incomeTax, Double localIncomeTax, Double netPay, String project, Date startDate) {
        super(id, attendanceRecord, department, division, name, position, address, dateofjoining, email, phonenumber);
        this.dailyRate = dailyRate;
        this.incomeTax = incomeTax;
        this.localIncomeTax = localIncomeTax;
        this.netPay = netPay;
        this.project = project;
        this.startDate = startDate;
    }

    public Double getDailyRate() {
        return dailyRate;
    }

    public void setDailyRate(Double dailyRate) {
        this.dailyRate = dailyRate;
    }

    public Double getIncomeTax() {
        return incomeTax;
    }

    public void setIncomeTax(Double incomeTax) {
        this.incomeTax = incomeTax;
    }

    public Double getLocalIncomeTax() {
        return localIncomeTax;
    }

    public void setLocalIncomeTax(Double localIncomeTax) {
        this.localIncomeTax = localIncomeTax;
    }

    public Double getNetPay() {
        return netPay;
    }

    public void setNetPay(Double netPay) {
        this.netPay = netPay;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }
}


