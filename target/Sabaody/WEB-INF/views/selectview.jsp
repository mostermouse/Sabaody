<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus" %>
<%@ page import="org.sabaody.domain.user.controller.EmploymentStatusDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>조회</title>
</head>
<body>
<ul>
    <div class='dil_w_list'>
        <div id='table_dil'>
            <p class='caption'></p>
            <ul>
                <li class='w_24 tit'><label class="label_check" for="chkBoxGrpEmployeeInfo"><input
                        id="chkBoxGrpEmployeeInfo" type="checkbox"> </label></li>
                <li class='w_100 tit'><strong>区分</strong></li>
                <li class='w_105 tit'><strong>社員番号</strong></li>
                <li class='w_100 tit'><strong>名前</strong></li>
                <li class='w_120 tit'><strong>部署</strong></li>
                <li class='w_120 tit'><strong>役職</strong></li>
                <li class='w_119 tit'><strong>勤怠記録</strong></li>
            </ul>
            <div id="disContentList" class="disContentList" style="width:710px;">
                <div id="table_dil_data">
                    <%-- DAO에서 가져온 고용 상태 정보를 표시합니다 --%>
                    <%
                        EmploymentStatusDAO employmentStatusDAO = new EmploymentStatusDAO();
                        List<EmploymentStatus> employmentStatusList = employmentStatusDAO.getAllEmploymentStatus();
                        if (employmentStatusList != null && !employmentStatusList.isEmpty()) {
                            int employeeNo = 0;
                            for (EmploymentStatus employmentStatus : employmentStatusList) { %>
                    <ul id="employeeNo<%= employeeNo %>" class="anchor" style='width:710px;'>
                        <li class='w_24 c'><label class="label_check" for="grpEmployeeInfoId<%= employeeNo %>"><input type="checkbox" name="grpEmployeeInfoId" id="grpEmployeeInfoId<%= employeeNo %>" value="<%= employmentStatus.getId() %>"></label></li>
                        <li class='w_100 c'><%= employmentStatus.getDivision() %></li>
                        <li class='w_105 c'><%= employmentStatus.getId() %></li>
                        <li class='w_100 c'><%= employmentStatus.getName() %></li>
                        <li class='w_120 c'><%= employmentStatus.getDepartment() %></li>
                        <li class='w_120 c'><%= employmentStatus.getPosition() %></li>
                        <li class='w_119 c'><span name="btnDiliMnt" id="btnDiliMnt" class="anchor" onclick="$.fn.employeeDiliList('<%= employmentStatus.getId() %>');"><img src='https://img.payzon.co.kr/_commonImg/btn_admin.png'  width='52px' height='19px' alt='관리' title='관리' ></span></li>
                    </ul>
                    <%
                            employeeNo++;
                        }
                    } else { %>
                    <p>No employment status available</p>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
