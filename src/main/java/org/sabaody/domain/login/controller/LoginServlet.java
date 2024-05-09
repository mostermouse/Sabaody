package org.sabaody.domain.login.controller;

import org.sabaody.domain.login.model.Login;
import org.sabaody.domain.user.controller.EmploymentStatusDAO;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmploymentStatusDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userid");
        String password = request.getParameter("password");


        Login user = dao.getUserByID(userId);
        if (user != null && user.getPassword().equals(password)) {
            request.getSession().setAttribute("userid", userId);
            response.sendRedirect("/selectview?loginResult=success");
        } else {
            response.sendRedirect("/?loginResult=fail");
        }


    }
}