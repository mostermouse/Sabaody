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
import org.sabaody.domain.kintai.model.KintaiDetails;

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
    public List<KintaiDetails> getAllKintaiDetails() {
        List<KintaiDetails> kintaiDetailsList = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM ");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
            	KintaiDetails kintaiDetails = new KintaiDetails();
                kintaiDetails.setInputDate(rs.getDate("inputDate"));
                kintaiDetails.setDivision(rs.getString("division"));
                kintaiDetails.setName(rs.getString("name"));
                kintaiDetails.setDepartment(rs.getString("department"));
                kintaiDetails.setPosition(rs.getString("position"));
                kintaiDetails.setAttendanceType(rs.getString("attendanceType"));
                kintaiDetails.setStartDate(rs.getDate("startDate"));
                kintaiDetails.setEndDate(rs.getDate("endDate"));
                kintaiDetails.setAttendanceDate(rs.getString("attendanceDate"));
                kintaiDetails.setAmount(rs.getLong("amount"));
                kintaiDetails.setSummary(rs.getString("summary"));
                kintaiDetailsList.add(kintaiDetails);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kintaiDetailsList;
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
