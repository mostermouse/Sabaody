package org.sabaody.domain.user.model.casuallabormanagement;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

public class CasualLaborManagement extends EmploymentStatus {
    private String project; // 労働者を識別する現場
    private String startDate; // 労働開始日
    private double dailyRate; // 日額支払率
    private double incomeTax; // 所得税
    private double localIncomeTax; // 地方所得税
    private double netPay; // 実支給額



}

