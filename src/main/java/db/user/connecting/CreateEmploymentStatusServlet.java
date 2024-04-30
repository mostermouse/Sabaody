package db.user.connecting;

import db.user.enums.Contract;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/CreateEmploymentStatusServlet")
public class CreateEmploymentStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String division = request.getParameter("division");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String position = request.getParameter("position");
        String attendanceRecord = request.getParameter("attendanceRecord");

        // EmploymentStatus 객체 생성
        EmploymentStatus employmentStatus = new EmploymentStatus(attendanceRecord, department, Contract.valueOf(division.toUpperCase()), id, name, position);


        // DAO를 사용하여 EmploymentStatus 추가
        EmploymentStatusDAO dao = new EmploymentStatusDAO();
        dao.addEmploymentStatus(employmentStatus);

        // 추가 후 리다이렉트
        response.sendRedirect("/selectview01.jsp");
    }
}
