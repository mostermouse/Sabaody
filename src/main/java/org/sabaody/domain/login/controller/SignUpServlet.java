package org.sabaody.domain.login.controller;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmploymentStatusDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");

            dao.addUser(userid, password);


            response.sendRedirect("/");
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}
