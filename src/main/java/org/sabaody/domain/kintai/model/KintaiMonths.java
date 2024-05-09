package org.sabaody.domain.kintai.model;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import java.util.Objects;

public class KintaiMonths extends EmploymentStatus {

	private Long sum; 		// 合計
	private Long deduction; // 休暇控除

	public KintaiMonths() {
		// TODO Auto-generated constructor stub
	}

	public KintaiMonths(Long sum, Long deduction) {
		this.sum = sum;
		this.deduction = deduction;
	}

	public KintaiMonths(String id, String attendanceRecord, String department, String division, String name,
			String position, Long sum, Long deduction) {
		super(id, attendanceRecord, department, division, name, position);
		this.sum = sum;
		this.deduction = deduction;
		// TODO Auto-generated constructor stub
	}

	public Long getSum() {
		return sum;
	}

	public void setSum(Long sum) {
		this.sum = sum;
	}

	public Long getDeduction() {
		return deduction;
	}

	public void setDeduction(Long deduction) {
		this.deduction = deduction;
	}

	@Override
	public boolean equals(Object o) {
		// TODO Auto-generated method stub
	        if (this == o) return true;
	        if (!(o instanceof KintaiMonths)) return false;
	        KintaiMonths that = (KintaiMonths) o;
	        return Objects.equals(sum, that.sum) && Objects.equals(deduction, that.deduction);
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return Objects.hash(sum, deduction);
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "KintaiMonths{" +
        "sum='" + sum + '\'' +
        ", deduction='" + deduction + '\'' +
        '}';
	}
}
