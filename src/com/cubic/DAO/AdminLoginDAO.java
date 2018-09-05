package com.cubic.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cubic.Beans.AdminBean;

public class AdminLoginDAO {
	
	public static void login(AdminBean ab) throws SQLException{
		Connection con=DBMain.getcon();
		PreparedStatement pst=con.prepareStatement("select * from admin where adminname=? and adminpassword=?");
		pst.setString(1, ab.getAname());
		pst.setString(2, ab.getApass());
		ResultSet rs=pst.executeQuery();
		boolean b=rs.next();
		if(b) {
			ab.setIsvalid(true);
			ab.setAname(rs.getString("adminname"));
			ab.setCutoff(rs.getInt("cutoff"));
			ab.setTimer(rs.getInt("timer"));
		}else
			ab.setIsvalid(false);
		con.close();
	}
}
