package org.sabaody.domain.user.model.attendancemanagement;



import java.util.Objects;
//DTO　オブジェクト
public class EmploymentStatus {
    private String division; //区分
    private String id; //社員番号
    private String  name; //名前
    private String department; //部署
    private String position; //　ポジション　
    private String attendanceRecord; //勤怠記録

    public EmploymentStatus(){}
    public EmploymentStatus(String attendanceRecord, String department, String  division, String id, String name, String position) {
        this.attendanceRecord = attendanceRecord;
        this.department = department;
        this.division = division;
        this.id = id;
        this.name = name;
        this.position = position;
    }

    public String getAttendanceRecord() {
        return attendanceRecord;
    }

    public void setAttendanceRecord(String attendanceRecord) {
        this.attendanceRecord = attendanceRecord;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String  getDivision() {
        return division;
    }

    public void setDivision(String  division) {
        this.division = division;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof EmploymentStatus)) return false;
        EmploymentStatus that = (EmploymentStatus) o;
        return division == that.division && Objects.equals(id, that.id) && Objects.equals(name, that.name) && Objects.equals(department, that.department) && Objects.equals(position, that.position) && Objects.equals(attendanceRecord, that.attendanceRecord);
    }

    @Override
    public int hashCode() {
        return Objects.hash(division, id, name, department, position, attendanceRecord);
    }

    @Override
    public String toString() {
        return "EmploymentStatus{" +
                "attendanceRecord=" + attendanceRecord +
                ", division=" + division +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", position='" + position + '\'' +
                '}';
    }
}
