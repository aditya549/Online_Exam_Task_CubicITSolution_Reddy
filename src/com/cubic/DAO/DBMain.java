package com.cubic.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBMain {
	public static Connection getcon() {
		Connection con=null;
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "reddy", "reddy");
		}catch (Exception e) {
			System.out.println(e);
		}
		if(con!=null) {
			System.out.println("Connection successfully created");
		}else
		{
			System.out.println("Connection Unsuccessfully");
		}
		return con;
	}
}
