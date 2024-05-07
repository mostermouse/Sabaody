package org.sabaody.domain.emplyee.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sabaody.domain.user.controller.EmploymentStatusDAO;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

@WebServlet("/employeeRegistration.do")
public class EmployeeRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

  /*  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 직원 정보 파라미터 가져오기
        String id = request.getParameter("id");
        String department = request.getParameter("department");
        String position = request.getParameter("position");

        // 출결 기록 생성
        org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord attendanceRecord = new org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord();
        attendanceRecord.setId(id);
        attendanceRecord.setInputDate(java.sql.Timestamp.valueOf(LocalDateTime.now())); // 현재 시간으로 설정
        attendanceRecord.setAttendanceType("입사");
        attendanceRecord.setStartDate(java.sql.Timestamp.valueOf(LocalDateTime.now().format(DateTimeFormatter.ISO_LOCAL_DATE))); // 현재 날짜로 설정
        attendanceRecord.setEndDate(""); // 입사일에는 종료일이 없음
        attendanceRecord.setAttendanceDate(""); // 입사일에는 근무일수 없음
        attendanceRecord.setAmount(0L); // 입사시에는 급여 정보가 없음
        attendanceRecord.setSummary("신규 입사"); // 입사를 의미하는 요약 정보

        // EmploymentStatus 객체 생성
        EmploymentStatus employmentStatus = new EmploymentStatus();
        employmentStatus.setId(id);
        employmentStatus.setDepartment(department);
        employmentStatus.setPosition(position);
        employmentStatus.setAttendanceRecord(attendanceRecord.toString()); // 출결 기록 문자열로 설정

        // EmploymentStatusDAO를 사용하여 고용 상태 추가
        EmploymentStatusDAO employmentStatusDAO = new EmploymentStatusDAO();
        employmentStatusDAO.addEmploymentStatus(employmentStatus);

        // 성공 페이지로 이동 또는 메시지 출력
        response.sendRedirect("success.jsp");*/
    
}
