package org.sabaody.domain.kintai.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.sabaody.domain.login.model.Login;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

public class KintaiDetailsDAO {
	DataSource dataSource;

    public KintaiDetailsDAO() {
        try {
            Context context = new InitialContext();
            dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    //Read

    public List<AttendanceRecord> getAllRecord() {
        List<AttendanceRecord> attendanceRecords = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM  employmentinfo");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                AttendanceRecord attendanceRecord = new AttendanceRecord();
               attendanceRecord.setInputDate(rs.getDate("inputDate"));
               attendanceRecord.setDivision(rs.getString("division"));
               attendanceRecord.setName(rs.getString("name"));
               attendanceRecord.setDepartment(rs.getString("department"));
               attendanceRecord.setPosition(rs.getString("position"));
               attendanceRecord.setAttendanceType(rs.getString("attendanceRecord"));
               attendanceRecord.setStartDate(rs.getDate("startDate"));
               attendanceRecord.setEndDate(rs.getDate("endDate"));
               attendanceRecord.setAttendanceDate(rs.getString("attendanceDate"));
               attendanceRecord.setAmount(rs.getLong("amount"));
               attendanceRecord.setSummary(rs.getString("summary"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attendanceRecords;
    }

    public Login getUserByID(String userid){
        Login user = null;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM login WHERE userid = ?")) {
            pstmt.setString(1, userid);
            try (ResultSet rs = pstmt.executeQuery()) {
                if(rs.next()){
                    user = new Login(rs.getString("userid"), rs.getString("password"));
                }
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return user;
    }
}
