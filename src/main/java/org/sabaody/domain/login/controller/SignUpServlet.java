package org.sabaody.domain.login.controller;

import org.sabaody.domain.user.controller.EmploymentStatusDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmploymentStatusDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");

            dao.addUser(userid, password);

            // 팝업 창 띄우기
            String script = "<script>alert('회원가입에 성공하였습니다.');</script>";
            response.getWriter().write(script);

            // 리다이렉트
            response.sendRedirect("/");
        } catch (Exception e) {
            e.printStackTrace();
            // 예외 처리
        }
    }
}
