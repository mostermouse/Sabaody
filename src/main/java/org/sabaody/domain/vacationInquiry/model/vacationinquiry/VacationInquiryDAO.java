package org.sabaody.domain.vacationInquiry.model.vacationinquiry;


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
    public void addVacationRecord(VacationInquiry vacationInquiry)throws Exception{
        try(Connection conn = dataSource.getConnection()){
            String sql = "INSERT INTO vacationinquiry (id , vacation_items , vacation_types , used_vacation_days,remaining_vacation_days) VALUES(?,?,?,?,?)";
            try(PreparedStatement statement = conn.prepareStatement(sql)){

                statement.setString(1, vacationInquiry.getId());
                statement.setString(2,vacationInquiry.getVacationItems());
                statement.setLong(3, vacationInquiry.getVacationTypes());
                statement.setLong(4, vacationInquiry.getUsedVacationDays());
                statement.setLong(5, vacationInquiry.getRemainingVacationDays());


                statement.executeQuery();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    public void updateVacation(VacationInquiry vacationInquiry) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "UPDATE VACATIONINQUIRY SET vacation_items =? , vacation_types =? , used_vacation_days=? , remaining_vacation_days =? WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, vacationInquiry.getVacationItems());
            statement.setLong(2, vacationInquiry.getVacationTypes());
            statement.setLong(3, vacationInquiry.getUsedVacationDays());
            statement.setLong(4, vacationInquiry.getRemainingVacationDays());
            statement.setString(5, vacationInquiry.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
