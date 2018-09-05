package com.cubic.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cubic.Beans.UserBean;
import com.cubic.DAO.UserRegistrationDAO;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		UserBean ub=new UserBean();
		ub.setUname(request.getParameter("uname"));
		ub.setUpassword(request.getParameter("upassword"));
		try {
			UserRegistrationDAO.login(ub);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean b=ub.isIsvalid();
		if(b) {
			HttpSession session=request.getSession(true);
			session.setAttribute("user", ub);
			response.sendRedirect("UserHome.jsp");
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("UserLoginFail.jsp");
			rd.forward(request, response);
		}
	
	}
}
