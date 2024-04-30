<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select View</title>
</head>
<body>
<h1>勤怠記録/管理</h1>
<table border="1">
    <thead>
    <tr>
        <th>区分</th>
        <th>社員番号</th>
        <th>名前</th>
        <th>部署</th>
        <th>役職</th>
        <th>勤怠記録</th> <!-- Division 열 추가 -->
    </tr>
    </thead>
    <tbody>
    <%-- DAO에서 가져온 고용 상태 정보를 표시합니다 --%>
    <% List<EmploymentStatus> employmentStatusList = (List<EmploymentStatus>) request.getAttribute("employmentStatusList");
        if (employmentStatusList != null && !employmentStatusList.isEmpty()) {
            for (EmploymentStatus employmentStatus : employmentStatusList) { %>
    <tr>
        <td><%= employmentStatus.getDivision() %></td>
        <td><%= employmentStatus.getId() %></td>
        <td><%= employmentStatus.getName() %></td>
        <td><%= employmentStatus.getDepartment() %></td>
        <td><%= employmentStatus.getPosition() %></td>
        <td><%= employmentStatus.getAttendanceRecord() %></td>

    </tr>
    <%  }
    } else { %>
    <tr>
        <td colspan="6">No employment status available</td> <!-- 셀의 개수가 변경됨에 따라 colspan 값 수정 -->
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
