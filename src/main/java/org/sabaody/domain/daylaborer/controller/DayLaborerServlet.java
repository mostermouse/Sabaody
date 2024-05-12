package org.sabaody.domain.daylaborer.controller;

import org.sabaody.domain.daylaborer.model.DayLaborerManagement;
import org.sabaody.domain.user.controller.EmploymentStatusDAO;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/daylaborerservlet")
public class DayLaborerServlet extends HttpServlet {

    private DayLaborerDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new DayLaborerDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String startDateStr = request.getParameter("inputdate");
        String id = request.getParameter("employeeId");
        String project = request.getParameter("frmDlgnCode");

        String daliyStr = request.getParameter("daliyrate");
        String incomTaxStr = request.getParameter("incomtax");
        String localTaxStr = request.getParameter("localincom");
        String netpayStr = request.getParameter("netpay");

        Date  startDate = Date.valueOf(startDateStr);
        Double daliy = Double.parseDouble(daliyStr);
        Double incomTax = Double.parseDouble(incomTaxStr);
        Double localTax = Double.parseDouble(localTaxStr);
        Double netPay = Double.parseDouble(netpayStr);


        DayLaborerManagement dayLaboer = new DayLaborerManagement();
       dayLaboer.setId(id);
       dayLaboer.setProject(project);
       dayLaboer.setStartDate(startDate);
       dayLaboer.setDailyRate(daliy);
       dayLaboer.setIncomeTax(incomTax);
       dayLaboer.setLocalIncomeTax(localTax);
       dayLaboer.setNetPay(netPay);


        try {
            dao.addDayLaborer(dayLaboer);
        } catch (Exception e) {
            e.printStackTrace();
        }



        response.sendRedirect("/daylaborerdetails");
    }


}
