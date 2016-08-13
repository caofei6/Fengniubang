package com.dao.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Test {
	public static void main(String[] args) {
		   String mess = null; 
			jdbcDao dao = new jdbcDao("fengniubang");
			ResultSet res = dao.select_UserMess("caofei");
			try {
				while(res.next()){
				    mess = res.getString("UserMess");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("∏ˆ»Àºƒ”Ô «"+mess);
			
	}
}
