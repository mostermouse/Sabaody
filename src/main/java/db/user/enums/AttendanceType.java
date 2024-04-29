package db.user.enums;

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
