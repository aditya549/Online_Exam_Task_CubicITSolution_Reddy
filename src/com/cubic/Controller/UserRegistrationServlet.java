package com.cubic.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cubic.Beans.UserBean;
import com.cubic.DAO.UserRegistrationDAO;

@WebServlet("/UserRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		UserBean ub=new UserBean();
		ub.setUname(request.getParameter("uname"));
		ub.setUpassword(request.getParameter("upassword"));
		ub.setUemail(request.getParameter("uemail"));
		ub.setUgender(request.getParameter("ugender"));
		ub.setDomain(request.getParameter("udomain"));
		ub.setStatus(null);
		try {
			UserRegistrationDAO.register(ub);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean b=ub.isIsvalid();
		if(b) {
			response.getWriter().println("<script>window.alert('User Registered Successfully Please Login To Continue')</script>");
			response.getWriter().println("<script>window.location.href='http://localhost:8085/Online_Exam_Task_CubicITSolution/UserLogin.jsp'</script>");
		}else 
		{
		response.getWriter().println("<script>window.alert('There is A Problem While REgistering please try again')</script>");
		response.getWriter().println("<script>window.location.href='http://localhost:8085/Online_Exam_Task_CubicITSolution/UserLogin.jsp'</script>");		}
		
	}

}
