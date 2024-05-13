package org.sabaody.domain.vacationInquiry.controller;

import org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiry;
import org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiryDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/vacationServlet")
public class vacationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private VacationInquiryDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new VacationInquiryDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String vacationitems= request.getParameter("vacationtype");
        Long vacationcnt = Long.parseLong(request.getParameter("vacationcnt"));
        Long vacationnum2 = Long.parseLong(request.getParameter("vacationnum2"));
        Long vacationnum3 = Long.parseLong(request.getParameter("vacationnum3"));

        VacationInquiry vacation = new VacationInquiry();
        vacation.setId(id);
        vacation.setVacationItems(vacationitems);
        vacation.setVacationTypes(vacationcnt);
        vacation.setUsedVacationDays(vacationnum2);
        vacation.setRemainingVacationDays(vacationnum2);

        try{
            dao.addVacationRecord(vacation);
        }catch (Exception e){
            e.printStackTrace();
        }
        response.sendRedirect("/vacation");

    }
}
