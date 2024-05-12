package org.sabaody.domain.daylaborer.controller;

import org.sabaody.domain.daylaborer.model.DayLaborerManagement;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DayLaborerDAO {


    DataSource dataSource;

    public DayLaborerDAO() {
        try {
            Context context = new InitialContext();
            dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<EmploymentStatus> getDayStatus() {
        List<EmploymentStatus> employmentStatusList = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM  employmentinfo where division = '日雇い'");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                EmploymentStatus employmentStatus = new EmploymentStatus();
                employmentStatus.setDivision(rs.getString("division"));
                employmentStatus.setId(rs.getString("id"));
                employmentStatus.setName(rs.getString("name"));
                employmentStatus.setDepartment(rs.getString("department"));
                employmentStatus.setPosition(rs.getString("position"));
                employmentStatus.setAttendanceRecord(rs.getString("attendance_record"));
                employmentStatusList.add(employmentStatus);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employmentStatusList;
    }

    public void addDayLaborer(DayLaborerManagement dayLaborerManagement) throws Exception {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "INSERT INTO DAYLABORER (id , project , start_days , daily_rate , income_tax, local_income_tax , net_pay) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {

                statement.setString(1, dayLaborerManagement.getId());
                statement.setString(2, dayLaborerManagement.getProject());
                statement.setDate(3, dayLaborerManagement.getStartDate());
                statement.setDouble(4, dayLaborerManagement.getDailyRate());
                statement.setDouble(5, dayLaborerManagement.getIncomeTax());
                statement.setDouble(6, dayLaborerManagement.getLocalIncomeTax());
                statement.setDouble(7, dayLaborerManagement.getNetPay());




                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




}
