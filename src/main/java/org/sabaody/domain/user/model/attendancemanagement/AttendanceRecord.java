package org.sabaody.domain.user.model.attendancemanagement;



import java.sql.Date;
import java.util.Objects;

public class AttendanceRecord extends EmploymentStatus {
    private Date  inputDate; // 입력일
    private String attendanceType; // 근태 기록
    private Date startDate; // 시작일
    private Date  endDate; // 종료일
    private String  attendanceDate; // 근무일

    private Long  amount; // 금액
    private String summary; // 요약
    public AttendanceRecord(){}

    public AttendanceRecord(Long amount, String attendanceDate, String attendanceType, Date endDate, Date inputDate, Date startDate, String summary) {
        this.amount = amount;
        this.attendanceDate = attendanceDate;
        this.attendanceType = attendanceType;
        this.endDate = endDate;
        this.inputDate = inputDate;
        this.startDate = startDate;
        this.summary = summary;
    }

    public AttendanceRecord(String id, String attendanceRecord, String department, String division, String name, String position, Long amount, String attendanceDate, String attendanceType, Date endDate, Date inputDate, Date startDate, String summary) {
        super(id, attendanceRecord, department, division, name, position);
        this.amount = amount;
        this.attendanceDate = attendanceDate;
        this.attendanceType = attendanceType;
        this.endDate = endDate;
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

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getInputDate() {
        return inputDate;
    }

    public void setInputDate(Date inputDate) {
        this.inputDate = inputDate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }
}
