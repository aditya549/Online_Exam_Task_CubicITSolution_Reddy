package com.cubic.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ResponseCache;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cubic.Beans.QuestionListBean;
import com.cubic.DAO.AddQuestionDAO;
@WebServlet("/AddQuestionController")
public class AddQuestionController extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		QuestionListBean qlb=new QuestionListBean();
		qlb.setQuename(request.getParameter("newquestion"));
		qlb.setQueans(request.getParameter("newoption"));
		qlb.setQueopt1(request.getParameter("op1"));
		qlb.setQueopt2(request.getParameter("op2"));
		qlb.setQueopt3(request.getParameter("op3"));
		qlb.setExplanation(request.getParameter("explanationnewquestion"));
		try {
			AddQuestionDAO.addQuestion(qlb);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		boolean b=qlb.isIsvalid();
		if(b) {
			out.println("<h3 style='text-align:center'>1-Question Added</h3>");
			RequestDispatcher rd=request.getRequestDispatcher("AddQuestion.jsp");
			rd.include(request, response);
		}else {
			response.sendRedirect("adminhome.jsp");
		}
		
	}
}
