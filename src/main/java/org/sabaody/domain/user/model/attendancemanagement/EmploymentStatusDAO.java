package org.sabaody.domain.user.model.attendancemanagement;

import org.sabaody.domain.login.model.Login;

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

    public void addEmployment(String id, String division, String name, String department, String position, Date dateOfJoining, String address, String phoneNumber, String email) throws SQLException {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "INSERT INTO employmentinfo(id, division, name, department, position,  date_of_joining, address, phone_number, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, id);
                statement.setString(2, division);
                statement.setString(3, name);
                statement.setString(4, department);
                statement.setString(5, position);
                statement.setDate(6, dateOfJoining);
                statement.setString(7, address);
                statement.setString(8, phoneNumber);
                statement.setString(9, email);


                statement.executeUpdate();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }




    public void addAttendanceRecord(AttendanceRecord attendanceRecord) throws Exception {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "INSERT INTO AttendanceRecord (input_date,id, attendance_type, start_date, end_date, attendance_date, amount, summary) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
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
    public List<EmploymentInfo> getAllEmploymentStatus() {
        List<EmploymentInfo> employmentStatusList = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT *  FROM  EMPLOYMENTINFO");
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                EmploymentInfo employmentStatus = new EmploymentInfo();
                employmentStatus.setId(rs.getString("id"));
                employmentStatus.setDivision(rs.getString("division"));
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
    public void updateEmploymentStatus(EmploymentInfo employmentInfo) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "UPDATE EMPLOYMENTINFO SET division = ?,name = ?,date_of_joining = ?, department = ?, position = ?,phone_number=? ,address = ?,email=? WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, employmentInfo.getDivision());
            statement.setString(2, employmentInfo.getName());
            statement.setString(3, employmentInfo.getDateofjoining());
            statement.setString(4, employmentInfo.getDepartment());
            statement.setString(5, employmentInfo.getPosition());
            statement.setString(6, employmentInfo.getPhonenumber());
            statement.setString(7, employmentInfo.getAddress());
            statement.setString(8, employmentInfo.getEmail());
            statement.setString(9, employmentInfo.getId()); // 매개변수의 순서에 따라 설정
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void deleteEmploymentStatus(String id) {
        try (Connection conn = dataSource.getConnection()) {
            String sql = "DELETE FROM employmentinfo WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
