package org.sabaody.domain.user.model.attendancemanagement;



import java.time.LocalDateTime;
import java.util.Objects;

public class AttendanceRecord {
    private String id; //EmploymentStatusオブジェクトと関連付けるためのキー
    private LocalDateTime inputDate; //入力日
    private String attendanceType; //勤怠記録enumで分類
    private String startDate; //期間はじめ
    private String endDate; //期間終わり
    private String attendanceDate; //勤務日数

    private Long amount; //金額
    private String summary; //摘要

    public AttendanceRecord(){}

    public AttendanceRecord(Long amount, String attendanceDate, String attendanceType, String endDate, String id, LocalDateTime inputDate, String startDate, String summary) {
        this.amount = amount;
        this.attendanceDate = attendanceDate;
        this.attendanceType = attendanceType;
        this.endDate = endDate;
        this.id = id;
        this.inputDate = inputDate;
        this.startDate = startDate;
        this.summary = summary;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public String getAttendanceDate() {
        return attendanceDate;
    }

    public void setAttendanceDate(String attendanceDate) {
        this.attendanceDate = attendanceDate;
    }

    public String getAttendanceType() {
        return attendanceType;
    }

    public void setAttendanceType(String attendanceType) {
        this.attendanceType = attendanceType;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public LocalDateTime getInputDate() {
        return inputDate;
    }

    public void setInputDate(LocalDateTime inputDate) {
        this.inputDate = inputDate;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AttendanceRecord)) return false;
        AttendanceRecord that = (AttendanceRecord) o;
        return Objects.equals(id, that.id) && Objects.equals(inputDate, that.inputDate) && attendanceType == that.attendanceType && Objects.equals(startDate, that.startDate) && Objects.equals(endDate, that.endDate) && Objects.equals(attendanceDate, that.attendanceDate) && Objects.equals(amount, that.amount) && Objects.equals(summary, that.summary);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, inputDate, attendanceType, startDate, endDate, attendanceDate, amount, summary);
    }

    @Override
    public String toString() {
        return "AttendanceRecord{" +
                "amount=" + amount +
                ", id='" + id + '\'' +
                ", inputDate=" + inputDate +
                ", attendanceType=" + attendanceType +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", attendanceDate='" + attendanceDate + '\'' +
                ", summary='" + summary + '\'' +
                '}';
    }
}
