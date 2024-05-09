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
import org.sabaody.domain.kintai.model.KintaiMonths;

public class KintaiMonthsDAO {
	DataSource dataSource;

    public KintaiMonthsDAO() {
        try {
            Context context = new InitialContext();
            dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    //Read
    public List<KintaiMonths> getAllKintaiMonths() {
        List<KintaiMonths> kintaiMonthsList = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM ");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
            	KintaiMonths kintaiMonths = new KintaiMonths();
            	kintaiMonths.setDivision(rs.getString("division"));
            	kintaiMonths.setId(rs.getString("id"));
            	kintaiMonths.setName(rs.getString("name"));
            	kintaiMonths.setDepartment(rs.getString("department"));
            	kintaiMonths.setPosition(rs.getString("position"));
            	kintaiMonths.setSum(rs.getLong("sum"));
            	kintaiMonths.setDeduction(rs.getLong("deduction"));
            	kintaiMonthsList.add(kintaiMonths);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kintaiMonthsList;
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