package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class manageUserAction extends ActionSupport{
	
	public String manage(){
		jdbcDao dao = new jdbcDao("fengniubang");
		ResultSet res = dao.select_from_Table("user");
		
		JsonArray ja = new JsonArray();
		try{
			int i = 0;
			while(res.next()){
				String id = res.getString("UserID");
				String name = res.getString("UserName");
				String sex = res.getString("UserSex");
				String qq = res.getString("UserQQ");
				String mess = res.getString("UserMess");
				String tel = res.getString("UserTel");
				String ic = res.getString("UserIc");	
				String mail = res.getString("UserMail");
				
				JsonObject o = new JsonObject();
				o.addProperty("UserID "+i, id);
				o.addProperty("UserName "+i, name);
				o.addProperty("UserSex "+i, sex);
				o.addProperty("UserQQ "+i, qq);
				o.addProperty("UserMess "+i, mess);
				o.addProperty("UserTel "+i, tel);
				o.addProperty("UserMail "+i, mail);
				o.addProperty("UserIc "+i, ic);
				
				ja.add(o);
				i++;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		session.put("user_list", ja.toString());
		return "success";
	}


}
