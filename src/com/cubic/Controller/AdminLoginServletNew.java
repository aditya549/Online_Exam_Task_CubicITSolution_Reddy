package com.cubic.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cubic.Beans.AdminBean;
import com.cubic.DAO.AdminLoginDAO;
@WebServlet("/AdminLoginServletNew")
public class AdminLoginServletNew extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Servlet Intialized");
	}

	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		AdminBean ab=new AdminBean();
		ab.setAname(req.getParameter("aname"));
		ab.setApass(req.getParameter("apass"));
		System.out.println(req.getParameter("aname"));
		System.out.println(req.getParameter("apass"));
		try {
			AdminLoginDAO.login(ab);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		boolean b=ab.isIsvalid();
		if(b) {
			HttpSession session=req.getSession(true);
			session.setAttribute("UserBean",ab);
			resp.sendRedirect("adminhome.jsp");
		}else{
			
		RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");
		rd.include(req, resp);
		out.println("<p style='text-align:center'>Invalid Admin Details </p>");
		}
	}
}
