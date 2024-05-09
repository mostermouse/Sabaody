package org.sabaody.domain.kintai.model;

import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;

import java.sql.Date;
import java.util.Objects;

public class KintaiDetails extends AttendanceRecord {

	private String division;	// 区分
	private String name; 		// 名前
	private String department;	// 部署
	private String position;	// 役職
	
	public KintaiDetails() {
		// TODO Auto-generated constructor stub
	}

	public KintaiDetails(String division, String name, String department, String position) {
		this.division = division;
		this.name = name;
		this.department = department;
		this.position = position;
	}

	public KintaiDetails(String id, Long amount, String attendanceDate, String attendanceType, Date endDate,
			Date inputDate, Date startDate, String summary, String division, String name, String department,
			String position) {
		super(id, amount, attendanceDate, attendanceType, endDate, inputDate, startDate, summary);
		// TODO Auto-generated constructor stub
		this.division = division;
		this.name = name;
		this.department = department;
		this.position = position;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public boolean equals(Object o) {
		// TODO Auto-generated method stub
		if (this == o) return true;
        if (!(o instanceof KintaiDetails)) return false;
        KintaiDetails that = (KintaiDetails) o;
        return Objects.equals(division, that.division) && Objects.equals(name, that.name) && Objects.equals(department, department) && Objects.equals(position, position);
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return Objects.hash(division, name, department, position);
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "KintaiDetails{" +
        "division='" + division + '\'' +
        ", name='" + name + '\'' +
        ", department='" + department + '\'' +
        ", position='" + position + '\'' +
        '}';
	}

}
