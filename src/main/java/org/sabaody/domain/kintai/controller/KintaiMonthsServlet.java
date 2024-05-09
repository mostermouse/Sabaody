package org.sabaody.domain.kintai.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sabaody.domain.kintai.model.KintaiMonths;

@WebServlet("/KintaiMonthsServlet")
class KintaiMonthsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private KintaiMonthsDAO dao;

	public void init() throws ServletException {
		super.init();
		dao = new KintaiMonthsDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// DAO를 사용하여 모든 고용 상태 가져오기
		List<KintaiMonths> kintaiMonthsList = dao.getAllKintaiMonths();

		// 가져온 고용 상태 목록을 request에 설정
		request.setAttribute("kintaiMonthsList", kintaiMonthsList);

		// JSP로 포워딩
		request.getRequestDispatcher("/WEB-INF/views/kintaimonths.jsp").forward(request, response);
	}

}
