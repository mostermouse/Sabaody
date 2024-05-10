package org.sabaody.domain.vacationInquiry.model.vacationinquiry;

import java.util.Objects;

public class VacationType {
    private String typeName; // 休暇種類
    private int totalDays; // 全体休暇
    private int remainingDays; // 残余休暇

    public VacationType(){}

    public VacationType(int remainingDays, int totalDays, String typeName) {
        this.remainingDays = remainingDays;
        this.totalDays = totalDays;
        this.typeName = typeName;
    }

    public int getRemainingDays() {
        return remainingDays;
    }

    public void setRemainingDays(int remainingDays) {
        this.remainingDays = remainingDays;
    }

    public int getTotalDays() {
        return totalDays;
    }

    public void setTotalDays(int totalDays) {
        this.totalDays = totalDays;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof VacationType)) return false;
        VacationType that = (VacationType) o;
        return totalDays == that.totalDays && remainingDays == that.remainingDays && Objects.equals(typeName, that.typeName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(typeName, totalDays, remainingDays);
    }

    @Override
    public String toString() {
        return "VacationType{" +
                "remainingDays=" + remainingDays +
                ", typeName='" + typeName + '\'' +
                ", totalDays=" + totalDays +
                '}';
    }
}
