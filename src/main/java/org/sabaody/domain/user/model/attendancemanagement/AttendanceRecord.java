package org.sabaody.domain.user.model.attendancemanagement;



import java.sql.Date;
import java.util.Objects;

public class AttendanceRecord extends IdEntity {
    private Date  inputDate; // 입력일
    private String attendanceType; // 근태 기록
    private Date startDate; // 시작일
    private Date  endDate; // 종료일
    private String  attendanceDate; // 근무일

    private Long  amount; // 금액
    private String summary; // 요약

    public AttendanceRecord() {
        super(null);
    }

    public AttendanceRecord(String id, Long amount, String attendanceDate, String attendanceType, Date endDate, Date inputDate, Date startDate, String summary) {
        super(id);
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AttendanceRecord)) return false;
        AttendanceRecord that = (AttendanceRecord) o;
        return Objects.equals(inputDate, that.inputDate) && Objects.equals(attendanceType, that.attendanceType) && Objects.equals(startDate, that.startDate) && Objects.equals(endDate, that.endDate) && Objects.equals(attendanceDate, that.attendanceDate) && Objects.equals(amount, that.amount) && Objects.equals(summary, that.summary);
    }

    @Override
    public int hashCode() {
        return Objects.hash(inputDate, attendanceType, startDate, endDate, attendanceDate, amount, summary);
    }

    @Override
    public String toString() {
        return "AttendanceRecord{" +
                "amount=" + amount +
                ", inputDate=" + inputDate +
                ", attendanceType='" + attendanceType + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", attendanceDate='" + attendanceDate + '\'' +
                ", summary='" + summary + '\'' +
                '}';
    }
}
