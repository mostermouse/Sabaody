package org.sabaody.domain.user.controller;

import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/CreateAttRecordServlet")
public class CreateAttRecordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmploymentStatusDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String inputDateStr = request.getParameter("inputdate");
        String employeeId = request.getParameter("employeeId");
        String attendanceType = request.getParameter("frmDlgnCode");
        String startDateStr = request.getParameter("frmDlsvSttD");
        String endDateStr = request.getParameter("frmDlsvEndD");
        String attendanceDate = request.getParameter("frmDlsvDays");
        String amountStr = request.getParameter("frmDlsvPays");
        String summary = request.getParameter("frmDlsvEtcs");


        Date inputDate = Date.valueOf(inputDateStr);
        Date startDate = Date.valueOf(startDateStr);
        Date endDate = Date.valueOf(endDateStr);


        Long amount = Long.parseLong(amountStr);


        AttendanceRecord attRecord = new AttendanceRecord();
        attRecord.setId(employeeId);
        attRecord.setInputDate(inputDate);
        attRecord.setAttendanceType(attendanceType);
        attRecord.setStartDate(startDate);
        attRecord.setEndDate(endDate);
        attRecord.setAttendanceDate(attendanceDate);
        attRecord.setAmount(amount);
        attRecord.setSummary(summary);


        try {
            dao.addAttendanceRecord(attRecord);
        } catch (Exception e) {
            e.printStackTrace();
        }



        response.sendRedirect("/kintaiselect");
    }

}
