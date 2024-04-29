package org.sabaody.domain.user.model.vacationinquiry;

import java.time.LocalDate;
import java.util.Objects;

public class VacationStatus {

    private LocalDate inputDate; // 入力日
    private String attendanceItem; // 勤務項目
    private String duration; // 期間
    private int days; // 日
    private String description; // 摘要
    public VacationStatus(){}

    public VacationStatus(String attendanceItem, int days, String description, String duration, LocalDate inputDate) {
        this.attendanceItem = attendanceItem;
        this.days = days;
        this.description = description;
        this.duration = duration;
        this.inputDate = inputDate;
    }

    public String getAttendanceItem() {
        return attendanceItem;
    }

    public void setAttendanceItem(String attendanceItem) {
        this.attendanceItem = attendanceItem;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public LocalDate getInputDate() {
        return inputDate;
    }

    public void setInputDate(LocalDate inputDate) {
        this.inputDate = inputDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof VacationStatus)) return false;
        VacationStatus that = (VacationStatus) o;
        return days == that.days && Objects.equals(inputDate, that.inputDate) && Objects.equals(attendanceItem, that.attendanceItem) && Objects.equals(duration, that.duration) && Objects.equals(description, that.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(inputDate, attendanceItem, duration, days, description);
    }

    @Override
    public String toString() {
        return "VacationStatus{" +
                "attendanceItem='" + attendanceItem + '\'' +
                ", inputDate=" + inputDate +
                ", duration='" + duration + '\'' +
                ", days=" + days +
                ", description='" + description + '\'' +
                '}';
    }
}
