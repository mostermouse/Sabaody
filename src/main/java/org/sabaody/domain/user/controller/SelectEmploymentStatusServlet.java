package org.sabaody.domain.user.controller;

import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus;
import org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectStatusServlet")
public class SelectEmploymentStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmploymentStatusDAO dao;

    public void init() throws ServletException {
        super.init();
        dao = new EmploymentStatusDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EmploymentStatus> employmentStatusList = dao.getAllEmploymentStatus();
        request.setAttribute("employmentStatusList", employmentStatusList);


        request.getRequestDispatcher("/selectview").forward(request, response);
    }


    /*

public class GetCompanyHandler implements CommandHandler {
   private static final String CONTENT_VIEW = "/index.jsp";
   private GetCompanyService getCompanyService = new GetCompanyService();

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
      User authUser = (User) request.getSession().getAttribute("authUser");
      String id = authUser.getId();
      System.out.println("id: " + id);
      try {
         Company company = getCompanyService.get(id);
         request.setAttribute("company", company);

         return CONTENT_VIEW;
      } catch (CompanyNotFoundException e) {
         request.getServletContext().log("no Company", e);
         response.sendError(HttpServletResponse.SC_NOT_FOUND);

         return null;
      }
   }
}*/
}
