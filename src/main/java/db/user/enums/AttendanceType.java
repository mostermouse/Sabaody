package db.user.enums;
//TODO 근태항목 리스트 확인 후 수정 필요
public enum AttendanceType {
    INPUT_DATE("입력일자"),
    ATTENDANCE_ITEM("근태항목");

    private final String label;

    AttendanceType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
