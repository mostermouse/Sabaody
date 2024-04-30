package db.user.enums;

public enum Contract {
    FULLTIME("FULLTIME"),
    CONTRACTWORKER("CONTRACTWORKER"),
    DAYLABORER("DAYLABORER"),
    TEMPORARYWORKER("TEMPORARYWORKER");

    private final String description;

    Contract(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
