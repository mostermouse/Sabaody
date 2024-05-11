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

		List<KintaiMonths> kintaiMonthsList = dao.getAllKintaiMonths();


		request.setAttribute("kintaiMonthsList", kintaiMonthsList);


		request.getRequestDispatcher("/WEB-INF/views/kintaidetails.jsp").forward(request, response);
	}

}
