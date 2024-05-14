package org.sabaody.domain.daylaborer.controller;

import org.sabaody.domain.daylaborer.model.DayLaborerDAO;
import org.sabaody.domain.daylaborer.model.DayLaborerManagement;
import org.sabaody.domain.kintai.model.KintaiDetailsDAO;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/daydetails")
public class DaydetailsSelectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DayLaborerDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new DayLaborerDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<DayLaborerManagement> dayList = dao.getAllDay();
        request.setAttribute("dayList", dayList);


        request.getRequestDispatcher("/daylaborerdetails").forward(request, response);
    }

}
