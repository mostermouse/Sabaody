package org.sabaody.domain.emplyee.controller;

import org.sabaody.domain.user.controller.EmploymentStatusDAO;

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
        // Retrieve parameters from the request
        String id = request.getParameter("id");
        String division = request.getParameter("division");
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String position = request.getParameter("position");
        String attendanceRecord = request.getParameter("attendanceRecord");
        String dateOfJoiningStr = request.getParameter("hireDate");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");

        Date dateOfJoining = Date.valueOf(dateOfJoiningStr);

        try {

            dao.addEmployment(id, division, name, department, position, attendanceRecord, dateOfJoining, address, phoneNumber, email);


            response.sendRedirect("/selectview");
        } catch (SQLException e) {

            response.sendRedirect("error.jsp");
            e.printStackTrace();
        }
    }

}
