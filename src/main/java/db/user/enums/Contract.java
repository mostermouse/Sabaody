package db.user.enums;
public enum Contract {
    정규직(" FULLTIME"),
    계약직("CONTRACTWORKER"),
    일용직("DAYLABORER"),
    임시직("TEMPORARYWORKER");

    private final String description;

    Contract(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
