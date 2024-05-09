package org.sabaody.domain.user.model.vacationinquiry;




import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;



public class VacationInquiry extends EmploymentStatus {


    private Long vacationTypes; // 休暇全体
    private Long usedVacationDays; // 使用した休暇
    private Long remainingVacationDays; // 残余休暇数
    public VacationInquiry(){}

    public VacationInquiry(Long remainingVacationDays, Long usedVacationDays, Long vacationTypes) {
        this.remainingVacationDays = remainingVacationDays;
        this.usedVacationDays = usedVacationDays;
        this.vacationTypes = vacationTypes;
    }

    public VacationInquiry(String id, String attendanceRecord, String department, String division, String name, String position, Long remainingVacationDays, Long usedVacationDays, Long vacationTypes) {
        super(id, attendanceRecord, department, division, name, position);
        this.remainingVacationDays = remainingVacationDays;
        this.usedVacationDays = usedVacationDays;
        this.vacationTypes = vacationTypes;
    }

    public Long getRemainingVacationDays() {
        return remainingVacationDays;
    }

    public void setRemainingVacationDays(Long remainingVacationDays) {
        this.remainingVacationDays = remainingVacationDays;
    }

    public Long getUsedVacationDays() {
        return usedVacationDays;
    }

    public void setUsedVacationDays(Long usedVacationDays) {
        this.usedVacationDays = usedVacationDays;
    }

    public Long getVacationTypes() {
        return vacationTypes;
    }

    public void setVacationTypes(Long vacationTypes) {
        this.vacationTypes = vacationTypes;
    }
}

