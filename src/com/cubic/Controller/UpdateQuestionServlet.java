package com.cubic.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cubic.Beans.QuestionListBean;
import com.cubic.DAO.AddQuestionDAO;

@WebServlet("/UpdateQuestionServlet")
public class UpdateQuestionServlet extends HttpServlet{
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
		qlb.setId(Integer.parseInt(request.getParameter("id")));
		try {
			AddQuestionDAO.update(qlb);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		boolean b=qlb.isIsvalid();
		if(b) {
			out.println("<h3 style='text-align:center'>1-Question Edited</h3>");
			RequestDispatcher rd=request.getRequestDispatcher("AddQuestion.jsp");
			rd.include(request, response);
		}else {
			out.println("<h3 style='text-align:center'>Question Not Edited try Again</h3>");
			response.sendRedirect("adminhome.jsp");
		}
		
	}
}
