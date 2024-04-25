package db.user.enums;

public enum UserStatus {
    EMPLOYED("재직"),
    RETIRED("퇴직")
    ;

    private final String description;

    UserStatus(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
