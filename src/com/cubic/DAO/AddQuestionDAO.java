package com.cubic.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cubic.Beans.QuestionListBean;

public class AddQuestionDAO {

	public static void addQuestion(QuestionListBean qlb) throws SQLException {
		Connection con=DBMain.getcon();
		PreparedStatement pst=con.prepareStatement("insert into questionlist values(?,?,?,?,?,?,question_seq.nextval)");
		pst.setString(1, qlb.getQuename());
		pst.setString(2, qlb.getQueans());
		pst.setString(3, qlb.getQueopt1());
		pst.setString(4, qlb.getQueopt2());
		pst.setString(5, qlb.getQueopt3());
		pst.setString(6, qlb.getExplanation());
		int i=pst.executeUpdate();
		if(i==0) {
			qlb.setIsvalid(false);
		}else
			qlb.setIsvalid(true);
		con.close();
	}

	public static void update(QuestionListBean qlb) throws SQLException {
		Connection con=DBMain.getcon();
		PreparedStatement pst=con.prepareStatement("update questionlist set quename=?,queans=?,queopt1=?,queopt2=?,queopt3=?,explanation=? where id=?");
		pst.setString(1, qlb.getQuename());
		pst.setString(2, qlb.getQueans());
		pst.setString(3, qlb.getQueopt1());
		pst.setString(4, qlb.getQueopt2());
		pst.setString(5, qlb.getQueopt3());
		pst.setString(6, qlb.getExplanation());
		pst.setInt(7, qlb.getId());
		int i=pst.executeUpdate();
		if(i==0) {
			qlb.setIsvalid(false);
		}else
			qlb.setIsvalid(true);
		con.close();
		
	}
}
