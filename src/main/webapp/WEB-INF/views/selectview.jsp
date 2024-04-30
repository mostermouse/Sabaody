<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select View</title>
    <!-- 추가된 JavaScript -->



        <script>
            function redirectToRecord() {
            window.location.href = "record.jsp";
        }
    </script>

    </script>
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
        <th>勤怠記録</th>
        <!-- 새로운 열(칸) 추가 -->
        <th>입력</th>
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
        <!-- 근태 기록에 링크 추가 -->
       <%-- <td><a href="record.jsp?id=<%= employmentStatus.getId() %>">記録管理</a></td>--%>
        <td><a href="record">記録管理</a> </td>
        <!-- 입력 폼 열 추가 -->
        <td>
            <form action="saveAttendance.jsp" method="post">
                <input type="hidden" name="employee_id" value="<%= employmentStatus.getId() %>">
                <label for="input_date">입력일자:</label>
                <input type="date" id="input_date" name="input_date"><br>
                <label for="input_category">근태 항목:</label>
                <select id="input_category" name="input_category" multiple>
                    <option value="연차">연차</option>
                    <option value="반차">반차</option>
                    <option value="지각">지각</option>
                    <option value="조퇴">조퇴</option>
                    <option value="외근">외근</option>
                    <option value="휴일근무">휴일근무</option>
                    <option value="연장근무">연장근무</option>
                    <option value="포상휴가">포상휴가</option>
                    <option value="야간근무">야간근무</option>
                    <option value="청원휴가">청원휴가</option>
                    <!-- 다른 근태 항목 추가 -->
                </select><br>
                <label for="input_start_date">시작일:</label>
                <input type="date" id="input_start_date" name="input_start_date"><br>
                <label for="input_end_date">종료일:</label>
                <input type="date" id="input_end_date" name="input_end_date"><br>
                <label for="input_days">근태 일수:</label>
                <input type="text" id="input_days" name="input_days"><br>
                <label for="input_amount">금액:</label>
                <input type="text" id="input_amount" name="input_amount"><br>
                <label for="input_summary">적요:</label>
                <textarea id="input_summary" name="input_summary"></textarea><br><br>
                <input type="submit" value="저장">
            </form>
        </td>
    </tr>
    <%  }
    } else { %>
    <tr>
        <td colspan="7">No employment status available</td> <!-- 셀의 개수가 변경됨에 따라 colspan 값 수정 -->
    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>
