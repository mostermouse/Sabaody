package org.sabaody.domain.user.model.vacationinquiry;




import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import java.util.List;

public class VacationInquiry extends EmploymentStatus {


    private List<VacationType> vacationTypes; // 休暇全体
    private int usedVacationDays; // 使用した休暇
    private int remainingVacationDays; // 残余休暇数

    public VacationInquiry(int remainingVacationDays, int usedVacationDays, List<VacationType> vacationTypes) {
        this.remainingVacationDays = remainingVacationDays;
        this.usedVacationDays = usedVacationDays;
        this.vacationTypes = vacationTypes;
    }

    public VacationInquiry(String id, String attendanceRecord, String department, String division, String name, String position, int remainingVacationDays, int usedVacationDays, List<VacationType> vacationTypes) {
        super(id, attendanceRecord, department, division, name, position);
        this.remainingVacationDays = remainingVacationDays;
        this.usedVacationDays = usedVacationDays;
        this.vacationTypes = vacationTypes;
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
}

