package org.sabaody.domain.user.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/employeeRegister")
public class EmpRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmploymentStatusDAO dao; // DAO 객체 생성

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO(); // DAO 인스턴스 생성
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        String divisionStr = request.getParameter("division");
        String nameStr = request.getParameter("name");
        String departmentStr = request.getParameter("department");
        String positionStr = request.getParameter("position");
        String phoneNumberStr = request.getParameter("phoneNumber");
        String addressStr = request.getParameter("address");
        String emailStr = request.getParameter("email");
        Date joinStr = Date.valueOf(request.getParameter("hireDate"));


        try {
            dao.addEmployment(idStr, divisionStr, nameStr, departmentStr, positionStr, joinStr, addressStr, phoneNumberStr, emailStr);
        } catch (SQLException e) {
            e.printStackTrace(); // 또는 적절한 예외 처리를 수행하세요.
        }

        response.sendRedirect("/selectview");
    }


}

