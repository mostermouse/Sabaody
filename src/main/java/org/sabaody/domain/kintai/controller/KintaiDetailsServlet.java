package org.sabaody.domain.kintai.controller;

import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class KintaiDetailsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private KintaiDetailsDAO dao;

	public void init() throws ServletException {
		super.init();
		dao = new KintaiDetailsDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// DAO를 사용하여 모든 고용 상태 가져오기
		List<AttendanceRecord> kintaiDetailsList = dao.getAllRecord();

		// 가져온 고용 상태 목록을 request에 설정
		request.setAttribute("kintaiDetailsList", kintaiDetailsList);

		// JSP로 포워딩
		request.getRequestDispatcher("/WEB-INF/views/kintaimonths.jsp").forward(request, response);
	}

}
