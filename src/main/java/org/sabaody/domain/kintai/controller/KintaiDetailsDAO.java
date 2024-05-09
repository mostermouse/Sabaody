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
             PreparedStatement pstmt = conn.prepareStatement("SELECT ar.inputdate, ei.division, ei.name, ei.department, ei.position, ar.attendancetype, ar.startdate, ar.enddate, ar.attendancedate, ar.amount, ar.summary FROM attendancerecord ar JOIN employmentinfo ei ON ar.id = ei.id");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                AttendanceRecord attendanceRecord = new AttendanceRecord();
                attendanceRecord.setInputDate(rs.getDate("inputdate"));
                attendanceRecord.setDivision(rs.getString("division"));
                attendanceRecord.setName(rs.getString("name"));
                attendanceRecord.setDepartment(rs.getString("department"));
                attendanceRecord.setPosition(rs.getString("position"));
                attendanceRecord.setAttendanceType(rs.getString("attendancetype"));
                attendanceRecord.setStartDate(rs.getDate("startdate"));
                attendanceRecord.setEndDate(rs.getDate("enddate"));
                attendanceRecord.setAttendanceDate(rs.getString("attendancedate"));
                attendanceRecord.setAmount(rs.getLong("amount"));
                attendanceRecord.setSummary(rs.getString("summary"));
                attendanceRecords.add(attendanceRecord);
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
