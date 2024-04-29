package db.user.enums;
//TODO 근태항목 리스트 확인 후 수정 필요
public enum AttendanceType {
	ANNUAL("연차"),
	HALF("반차"),
	LATE("지각"),
	EARLY("조퇴"),
	OUTSIDE("외근"),
	HOLIDAY("휴일근무"),
	OVERTIME("연장근무"),
	REWARD("포상휴가"),
	NIGHT("야간근무"),
	PETITION("청원휴가");
	
    private final String label;

    AttendanceType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
