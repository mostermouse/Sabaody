package org.sabaody.domain.user.model.attendancemanagement;



import java.util.Objects;
//DTO　オブジェクト
public class EmploymentStatus extends IdEntity{
    private String division; //区分
    private String  name; //名前
    private String department; //部署
    private String position; //　ポジション　
    private String attendanceRecord; //勤怠記録

    public EmploymentStatus() {
        super(null); // 아무런 초기화도 필요하지 않으므로 id는 null로 설정합니다.
    }


    public EmploymentStatus(String id, String attendanceRecord, String department, String division, String name, String position) {
        super(id); // IdEntity 클래스의 생성자 호출하여 id 초기화
        this.attendanceRecord = attendanceRecord;
        this.department = department;
        this.division = division;
        this.name = name;
        this.position = position;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getAttendanceRecord() {
        return attendanceRecord;
    }

    public void setAttendanceRecord(String attendanceRecord) {
        this.attendanceRecord = attendanceRecord;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof EmploymentStatus)) return false;
        EmploymentStatus that = (EmploymentStatus) o;
        return Objects.equals(division, that.division) && Objects.equals(name, that.name) && Objects.equals(department, that.department) && Objects.equals(position, that.position) && Objects.equals(attendanceRecord, that.attendanceRecord);
    }

    @Override
    public int hashCode() {
        return Objects.hash(division, name, department, position, attendanceRecord);
    }

    @Override
    public String toString() {
        return "EmploymentStatus{" +
                "attendanceRecord='" + attendanceRecord + '\'' +
                ", division='" + division + '\'' +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", position='" + position + '\'' +
                '}';
    }
}
