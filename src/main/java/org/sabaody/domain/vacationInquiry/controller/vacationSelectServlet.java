package org.sabaody.domain.vacationInquiry.controller;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;
import org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiry;
import org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiryDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/vacationselect")
public class vacationSelectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private VacationInquiryDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new VacationInquiryDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<VacationInquiry> vacationList = dao.getAllVacationInquiries();
        request.setAttribute("vacation", vacationList);


        request.getRequestDispatcher("/vacation").forward(request, response);
    }
}
