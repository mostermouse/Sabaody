package org.sabaody.domain.user.controller;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/deleteEmployee")
public class DeleteEmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("employeeId");

        EmploymentStatusDAO dao = new EmploymentStatusDAO();
        try {
            dao.deleteEmploymentStatus(id);

            response.setContentType("text/html;charset=UTF-8");

            response.sendRedirect("/SelectStatusServlet");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
