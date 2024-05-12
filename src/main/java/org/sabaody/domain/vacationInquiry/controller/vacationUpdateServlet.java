package org.sabaody.domain.vacationInquiry.controller;

import org.sabaody.domain.user.controller.EmploymentStatusDAO;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;
import org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/vacupdate")
public class vacationUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private VacationInquiryDAO dao;

    public void init()throws ServletException {
        super.init();
        dao = new VacationInquiryDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String employeeId = request.getParameter("id");
        String vacationitem = request.getParameter("vacationitem");
        String vacationall = request.getParameter("vacationtype");
        String vacationUsed = request.getParameter("usedvacation");
        String vacationmin = request.getParameter("remaining");


        Long vacation1 = Long.parseLong(vacationall);
        Long vacation2 = Long.parseLong(vacationUsed);
        Long vacation3 = Long.parseLong(vacationmin);


        VacationInquiry vacationIn = new VacationInquiry();
        vacationIn.setId(employeeId);
        vacationIn.setVacationItems(vacationitem);
        vacationIn.setVacationTypes(vacation1);
        vacationIn.setUsedVacationDays(vacation2);
        vacationIn.setRemainingVacationDays(vacation3);

        try {
            dao.updateVacation(vacationIn);
        } catch (Exception e) {
            e.printStackTrace();
        }



        response.sendRedirect("/vacation");
    }

}
