package org.sabaody.domain.vacationInquiry.controller;

import org.sabaody.domain.login.model.Login;
import org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiry;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VacationInquiryDAO {
    private DataSource dataSource;

    public VacationInquiryDAO() {
        try {
            Context context = new InitialContext();
            dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle2");
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

    public List<VacationInquiry> getAllVacationInquiries() {
        List<VacationInquiry> inquiries = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT ei.id, ei.division, ei.name, ei.department, ei.position, ar.vacation_items, ar.vacation_types, ar.used_vacation_days, ar.remaining_vacation_days FROM vacationinquiry ar JOIN employmentinfo ei ON ar.id = ei.id");
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                VacationInquiry inquiry = new VacationInquiry();
                inquiry.setId(rs.getString("id"));
                inquiry.setDivision(rs.getString("division"));
                inquiry.setName(rs.getString("name"));
                inquiry.setDepartment(rs.getString("department"));
                inquiry.setPosition(rs.getString("position"));

                inquiry.setVacationItems(rs.getString("vacation_items")); //휴가  항목
                inquiry.setVacationTypes(rs.getLong("vacation_types")); //휴가 전체
                inquiry.setUsedVacationDays(rs.getLong("used_vacation_days")); //휴가 사용
                inquiry.setRemainingVacationDays(rs.getLong("remaining_vacation_days"));

                inquiries.add(inquiry);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return inquiries;
    }


}
