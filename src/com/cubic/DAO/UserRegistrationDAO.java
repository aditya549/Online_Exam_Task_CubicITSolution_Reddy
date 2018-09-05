package com.cubic.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cubic.Beans.UserBean;

public class UserRegistrationDAO {

	public static void register(UserBean ub) throws SQLException {
		Connection con=DBMain.getcon();
		PreparedStatement pst=con.prepareStatement("insert into userlist values(?,?,?,?,?,?,user_seq1.nextval)");
		pst.setString(1, ub.getUname());
		pst.setString(2, ub.getUpassword());
		pst.setString(3, ub.getUemail());
		pst.setString(4, ub.getUgender());
		pst.setString(5, ub.getDomain());
		pst.setString(6, ub.getStatus());
		int i=pst.executeUpdate();
		if(i==1) {
			ub.setIsvalid(true);
		}else
			ub.setIsvalid(false);
		con.close();
	}

	public static void login(UserBean ub) throws SQLException {
		Connection con=DBMain.getcon();
		PreparedStatement pst=con.prepareStatement("select * from userlist where uname=? and upassword=?");
		pst.setString(1, ub.getUname());
		pst.setString(2, ub.getUpassword());
		ResultSet rs=pst.executeQuery();
		boolean b=rs.next();
		if(b) {
			ub.setIsvalid(true);
			ub.setUname(rs.getString("uname"));
			ub.setUemail(rs.getString("uemail"));
			ub.setUgender(rs.getString("ugender"));
			ub.setDomain(rs.getString("domain"));
		}else
			ub.setIsvalid(false);
	}

}
