package org.sabaody.domain.user.controller;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmploymentStatusDAO {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE?characterEncoding=UTF-8";
    private static final String USER = "system";
    private static final String PASSWORD = "pass";
    static {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    //Create
    public void addEmploymentStatus(EmploymentStatus employmentStatus) {
        try(Connection conn = DriverManager.getConnection(URL,USER,PASSWORD)){
            String sql = "INSERT INTO employmentstatus (division, id, name, department, position, attendancerecord) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, employmentStatus.getDivision());
            statement.setString(2, employmentStatus.getId());
            statement.setString(3, employmentStatus.getName());
            statement.setString(4, employmentStatus.getDepartment());
            statement.setString(5, employmentStatus.getPosition());
            statement.setString(6, employmentStatus.getAttendanceRecord());

            // 쿼리 실행
            statement.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    //Read
    public List<EmploymentStatus> getAllEmploymentStatus() {
        List<EmploymentStatus> employmentStatusList = new ArrayList<>();
        try(Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)){
            String sql = "SELECT * FROM employmentstatus";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
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
        }catch (SQLException e){
            e.printStackTrace();
        }
        return employmentStatusList;
    }

    //Update
    public void updateEmploymentStatus(EmploymentStatus employmentStatus) {
        try(Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)){
            String sql = "UPDATE employmentstatus SET name = ?, department = ?, position = ?, attendancerecord = ? WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, employmentStatus.getName());
            statement.setString(2, employmentStatus.getDepartment());
            statement.setString(3, employmentStatus.getPosition());
            statement.setString(4, employmentStatus.getAttendanceRecord());
            statement.setString(5, employmentStatus.getId());
            statement.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void deleteEmploymentStatus(String id) {
        try(Connection conn = DriverManager.getConnection(URL,USER,PASSWORD)){
            String sql = "DELETE FROM employmentstatus WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

}
