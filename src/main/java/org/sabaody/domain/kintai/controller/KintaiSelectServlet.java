package org.sabaody.domain.kintai.controller;

import org.sabaody.domain.kintai.model.KintaiDetailsDAO;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/kintaiselect")
public class KintaiSelectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private KintaiDetailsDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new KintaiDetailsDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<AttendanceRecord> kintaiList = dao.getAllRecord();
        request.setAttribute("kintai", kintaiList);


        request.getRequestDispatcher("/kintaidetails").forward(request, response);
    }

}
