package org.sabaody.domain.daylaborer.controller;

import org.sabaody.domain.daylaborer.model.DayLaborerDAO;
import org.sabaody.domain.daylaborer.model.DayLaborerManagement;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/dayselect")
public class DayLborerSelectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DayLaborerDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new DayLaborerDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EmploymentStatus> DayList = dao.getDayStatus();
        request.setAttribute("daylist", DayList);


        request.getRequestDispatcher("/daylaborer").forward(request, response);
    }

}
