package org.sabaody.domain.daylaborer.controller;

import org.sabaody.domain.daylaborer.model.DayLaborerManagement;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentInfo;
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


    public List<DayLaborerManagement> getAllDay() {
        List<DayLaborerManagement> dayLaborerList = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT sr.start_days,sr.id, ar.name,ar.DEPARTMENT, sr.project, sr.daily_rate, sr.income_tax, sr.local_income_tax, sr.net_pay FROM EMPLOYMENTINFO ar JOIN DAYLABORER sr ON ar.ID = sr.ID");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                DayLaborerManagement dayLaborerRecord = new DayLaborerManagement();
                dayLaborerRecord.setStartDate(rs.getDate("start_days"));
                dayLaborerRecord.setId(rs.getString("id"));
                dayLaborerRecord.setName(rs.getString("name"));
                dayLaborerRecord.setDepartment(rs.getString("department"));
                dayLaborerRecord.setProject(rs.getString("project"));
                dayLaborerRecord.setDailyRate(rs.getDouble("daily_rate"));
                dayLaborerRecord.setIncomeTax(rs.getDouble("income_tax"));
                dayLaborerRecord.setLocalIncomeTax(rs.getDouble("local_income_tax"));
                dayLaborerRecord.setNetPay(rs.getDouble("net_pay"));

                dayLaborerList.add(dayLaborerRecord);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dayLaborerList;
    }

    public void updatedayStatus(DayLaborerManagement dayLaborerManagement) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "UPDATE DAYLABORER SET daily_rate = ? , income_tax =? , local_income_tax = ? , net_pay =?  WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setDouble(1, dayLaborerManagement.getDailyRate());
            statement.setDouble(2, dayLaborerManagement.getIncomeTax());
            statement.setDouble(3, dayLaborerManagement.getLocalIncomeTax());
            statement.setDouble(4, dayLaborerManagement.getNetPay());
            statement.setString(5, dayLaborerManagement.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



}
