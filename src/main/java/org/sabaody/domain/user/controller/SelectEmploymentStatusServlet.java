package org.sabaody.domain.user.controller;


import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectEmploymentStatusServlet")
public class SelectEmploymentStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // DAO를 사용하여 모든 고용 상태 가져오기
        EmploymentStatusDAO dao = new EmploymentStatusDAO();
        List<EmploymentStatus> employmentStatusList = dao.getAllEmploymentStatus();

        // 가져온 고용 상태 목록을 request에 설정
        request.setAttribute("employmentStatusList", employmentStatusList);

        // JSP로 포워딩
        request.getRequestDispatcher("/WEB-INF/views/selectview.jsp").forward(request, response);
    }
}
