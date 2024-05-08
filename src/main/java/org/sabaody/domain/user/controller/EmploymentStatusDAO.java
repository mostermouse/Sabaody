package org.sabaody.domain.user.controller;

import org.sabaody.domain.login.model.Login;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmploymentStatusDAO {


    DataSource dataSource;

    public EmploymentStatusDAO() {
        try {
            Context context = new InitialContext();
            dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //Create
    public void addUser(String userid, String password) throws Exception {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "INSERT INTO login (userid, password) VALUES (?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, userid);
                statement.setString(2, password);


                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addEmployment(String id, String division, String name, String department, String position, String attendanceRecord, Date dateOfJoining, String address, String phoneNumber, String email) throws SQLException {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "INSERT INTO employmentinfo(id, division, name, department, position, attendancerecord, dateofjoining, address, phonenumber, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, id);
                statement.setString(2, division);
                statement.setString(3, name);
                statement.setString(4, department);
                statement.setString(5, position);
                statement.setString(6, attendanceRecord);
                statement.setDate(7, dateOfJoining);
                statement.setString(8, address);
                statement.setString(9, phoneNumber);
                statement.setString(10, email);


                statement.executeUpdate();
            }
        }
    }




    public void addAttendanceRecord(AttendanceRecord attendanceRecord) throws Exception {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "INSERT INTO AttendanceRecord (inputDate,id, attendanceType, startDate, endDate, attendanceDate, amount, summary) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {

                statement.setDate(1, attendanceRecord.getInputDate());
                statement.setString(2, attendanceRecord.getId());
                statement.setString(3, attendanceRecord.getAttendanceType());
                statement.setDate(4, attendanceRecord.getStartDate());
                statement.setDate(5, attendanceRecord.getEndDate());
                statement.setString(6, attendanceRecord.getAttendanceDate());
                statement.setLong(7, attendanceRecord.getAmount());
                statement.setString(8, attendanceRecord.getSummary());



                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    //Read
    public List<EmploymentStatus> getAllEmploymentStatus() {
        List<EmploymentStatus> employmentStatusList = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM  employmentstatus");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                EmploymentStatus employmentStatus = new EmploymentStatus();
                employmentStatus.setDivision(rs.getString("division"));
                employmentStatus.setId(rs.getString("id"));
                employmentStatus.setName(rs.getString("name"));
                employmentStatus.setDepartment(rs.getString("department"));
                employmentStatus.setPosition(rs.getString("position"));
                employmentStatus.setAttendanceRecord(rs.getString("attendancerecord"));
                employmentStatusList.add(employmentStatus);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employmentStatusList;
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

    //Update
    public void updateEmploymentStatus(EmploymentStatus employmentStatus) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "UPDATE employmentstatus SET name = ?, department = ?, position = ?, attendancerecord = ? WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, employmentStatus.getName());
            statement.setString(2, employmentStatus.getDepartment());
            statement.setString(3, employmentStatus.getPosition());
            statement.setString(4, employmentStatus.getAttendanceRecord());
            statement.setString(5, employmentStatus.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteEmploymentStatus(String id) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "DELETE FROM employmentstatus WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
