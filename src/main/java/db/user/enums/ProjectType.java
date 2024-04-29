package db.user.enums;

public enum ProjectType {
	FIRSTSITE("현장1"),
	SECONDSITE("현장2"),
	LABORATORY("연구소"),
	DEVELOPMENTPROJECTS("개발프로젝트"),
	FIRSTFACTORY("제1공장");
	
    private final String project;

    ProjectType(String project) {
        this.project = project;
    }

    public String getLabel() {
        return project;
    }
}
