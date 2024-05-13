package org.sabaody.domain.kintai.controller;

import org.sabaody.domain.kintai.model.KintaiDetailsDAO;
import org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
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

		List<AttendanceRecord> kintaiDetailsList = dao.getAllRecord();


		request.setAttribute("kintaiDetailsList", kintaiDetailsList);


		request.getRequestDispatcher("/WEB-INF/views/kintaimonths.jsp").forward(request, response);
	}

}
