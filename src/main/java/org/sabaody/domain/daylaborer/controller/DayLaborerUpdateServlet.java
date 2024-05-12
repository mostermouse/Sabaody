package org.sabaody.domain.daylaborer.controller;

import org.sabaody.domain.daylaborer.model.DayLaborerManagement;
import org.sabaody.domain.user.controller.EmploymentStatusDAO;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/daylaborerupdate")
public class DayLaborerUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DayLaborerDAO dao;

    public void init()throws ServletException {
        super.init();
        dao = new DayLaborerDAO();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String employeeId = request.getParameter("id");
        Double dailyrate = Double.parseDouble(request.getParameter("dailyrate"));
        Double incometax = Double.parseDouble(request.getParameter("income_tax"));
        Double localincometax = Double.parseDouble(request.getParameter("localincometax"));
        Double netpay = Double.parseDouble(request.getParameter("netpay"));

        DayLaborerManagement dlm = new DayLaborerManagement();
        dlm.setId(employeeId);
        dlm.setDailyRate(dailyrate);
        dlm.setIncomeTax(incometax);
        dlm.setLocalIncomeTax(localincometax);
        dlm.setNetPay(netpay);

        try {
            dao.updatedayStatus(dlm);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("/daylaborerdetails");
    }

}
