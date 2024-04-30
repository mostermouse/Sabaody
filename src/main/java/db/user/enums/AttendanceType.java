package db.user.enums;
//TODO 근태항목 리스트 확인 후 수정 필요
public enum AttendanceType {
	연차("ANNUAL"),
	반차("HALF"),
	지각("LATE"),
	조퇴("EARLY"),
	외근("OUTSIDE"),
	휴일근무("HOLIDAY"),
	연장근무("OVERTIME"),
	포상휴가("REWARD"),
	야간근무("NIGHT"),
	청원휴가("PETITION");
	
    private final String label;

    AttendanceType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
