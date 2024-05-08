package org.sabaody.domain.emplyee.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sabaody.domain.user.controller.EmploymentStatusDAO;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

@WebServlet("/employeeRegister")
public class EmployeeRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // 성공 페이지로 이동 또는 메시지 출력
        response.sendRedirect("/selectview");

    }
}
