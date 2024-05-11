package org.sabaody.domain.user.controller;


import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectEmploymentStatusServlet")
public class SelectEmploymentStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmploymentStatusDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<EmploymentStatus> employmentStatusList = dao.getAllEmploymentStatus();
        request.setAttribute("employmentStatusList", employmentStatusList);


        request.getRequestDispatcher("/WEB-INF/views/selectview.jsp").forward(request, response);
    }


}
