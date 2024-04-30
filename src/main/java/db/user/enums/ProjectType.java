package db.user.enums;

public enum ProjectType {
    현장1("FIRSTSITE"),
    현장2("SECONDSITE"),
    연구소("LABORATORY"),
    개발프로젝트("DEVELOPMENTPROJECTS"),
    제1공장("FIRSTFACTORY");
	
    private final String project;

    ProjectType(String project) {
        this.project = project;
    }

    public String getLabel() {
        return project;
    }
}
