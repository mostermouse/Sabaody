package org.sabaody.domain.vacationInquiry.model.vacationinquiry;

import java.time.LocalDate;
import java.util.Objects;

public class VacationStatus extends VacationInquiry{

    private LocalDate inputDate; // 入力日
    private String attendanceItem; // 勤務項目
    private String duration; // 期間
    private int days; // 日
    private String description; // 摘要

    public VacationStatus(String attendanceItem, int days, String description, String duration, LocalDate inputDate) {
        this.attendanceItem = attendanceItem;
        this.days = days;
        this.description = description;
        this.duration = duration;
        this.inputDate = inputDate;
    }

    public VacationStatus(String id, String attendanceRecord, String department, String division, String name, String position, Long remainingVacationDays, Long usedVacationDays, String vacationItems, Long vacationTypes, String attendanceItem, int days, String description, String duration, LocalDate inputDate) {
        super(id, attendanceRecord, department, division, name, position, remainingVacationDays, usedVacationDays, vacationItems, vacationTypes);
        this.attendanceItem = attendanceItem;
        this.days = days;
        this.description = description;
        this.duration = duration;
        this.inputDate = inputDate;
    }

    public VacationStatus(Long remainingVacationDays, Long usedVacationDays, String vacationItems, Long vacationTypes, String attendanceItem, int days, String description, String duration, LocalDate inputDate) {
        super(remainingVacationDays, usedVacationDays, vacationItems, vacationTypes);
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
}
