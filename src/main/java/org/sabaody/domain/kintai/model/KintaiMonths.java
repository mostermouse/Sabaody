package org.sabaody.domain.kintai.model;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import java.util.Objects;

public class KintaiMonths extends EmploymentStatus {

	private Long sum; 		// 合計
	private Long deduction; // 休暇控除

	public KintaiMonths() {

	}

	public KintaiMonths(Long deduction, Long sum) {
		this.deduction = deduction;
		this.sum = sum;
	}

	public KintaiMonths(String id, String attendanceRecord, String department, String division, String name, String position, Long deduction, Long sum) {
		super(id, attendanceRecord, department, division, name, position);
		this.deduction = deduction;
		this.sum = sum;
	}

	public Long getDeduction() {
		return deduction;
	}

	public void setDeduction(Long deduction) {
		this.deduction = deduction;
	}

	public Long getSum() {
		return sum;
	}

	public void setSum(Long sum) {
		this.sum = sum;
	}
}
