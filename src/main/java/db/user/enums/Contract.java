package db.user.enums;
public enum Contract {
    FULLTIME("정규직"),
    CONTRACTWORKER("계약직"),
    DAYLABORER("일용직"),
    TEMPORARYWORKER("임시직");

    private final String description;

    Contract(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
