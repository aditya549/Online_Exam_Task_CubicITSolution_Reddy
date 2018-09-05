package com.cubic.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestResultServlet")

public class TestResultServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException, ServletException { 
		System.out.println("Test Result SERVLET");
		int count=0;
		int Notattempt=0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "reddy", "reddy");
		String id="str";
		String answer="";
		for(int i=1;i<=30;i++) {
			String str=Integer.toString(i);
			String Uans=req.getParameter(str);
			String id1=req.getParameter(id);
			System.out.println("User Entred Answer is " +Uans);
			System.out.println("User Entered Question id " +id1);
			PreparedStatement pst = null;
				pst = con.prepareStatement("select * from questionlist where id=?");
				pst.setString(1,id1);
				ResultSet rs = null;
				rs = pst.executeQuery();
				while(rs.next()) {
					answer=rs.getString("queans");
				}
			System.out.println("Correct Answer is "+answer);
			if(answer.equals(Uans)){
				count++;
			}
			id=id+i;
			if(Uans == null){
				Notattempt=Notattempt+1;
			}
		}
		int attempted =(30-Notattempt);
		if(count>=20) {
			req.setAttribute("a",attempted);
			req.setAttribute("b",count);
			RequestDispatcher rd=req.getRequestDispatcher("ExamSuccess.jsp");
			rd.forward(req, resp);
			}
		else
		{	
			req.setAttribute("a",attempted);
			req.setAttribute("b",count);
			RequestDispatcher rd=req.getRequestDispatcher("ExamSuccess.jsp");
			rd.forward(req, resp);
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			System.out.println("Close Block");
		}
	}		
}
