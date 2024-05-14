package org.sabaody.domain.user.controller;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/employeeUpdate")
public class EmployeeUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmploymentStatusDAO dao;

    public void init()throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String employeeId = request.getParameter("id");
        String division = request.getParameter("division");
        String name = request.getParameter("name");
        String hireDate = request.getParameter("hireDate");
        String department = request.getParameter("department");
        String position = request.getParameter("position");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");





        EmploymentInfo empInfo = new EmploymentInfo();
        empInfo.setId(employeeId);
        empInfo.setDivision(division);
        empInfo.setName(name);
        empInfo.setDateofjoining(hireDate);
        empInfo.setDepartment(department);
        empInfo.setPosition(position);
        empInfo.setPhonenumber(phoneNumber);
        empInfo.setAddress(address);
        empInfo.setEmail(email);

        try {
            dao.updateEmploymentStatus(empInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }



        response.sendRedirect("/SelectStatusServlet");
    }

}
