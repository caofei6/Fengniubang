package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class zhuyeAction  extends ActionSupport{
	
	private String user;
	
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String zhuye(){
		jdbcDao dao = new jdbcDao("fengniubang");
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		
		ResultSet res = dao.select_User(user);
		JsonArray ja = new JsonArray();
		try{
			int i = 0;
			while(res.next()){
				
				JsonObject o = new JsonObject();
				o.addProperty("UserID "+i, res.getString("UserID"));
				o.addProperty("UserName "+i, res.getString("UserName"));
				o.addProperty("UserSex "+i, res.getString("UserSex"));
				o.addProperty("UserQQ "+i, res.getString("UserQQ"));
				o.addProperty("UserTel "+i,  res.getString("UserTel"));
				o.addProperty("UserMail "+i, res.getString("UserIc"));
				o.addProperty("UserIc "+i, res.getString("UserMail"));
				o.addProperty("UserFans "+i, res.getString("UserFans"));
				ja.add(o);
				i++;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	    System.out.println("zhuyeΩ‚ŒˆÕÍ±œ£°");
	    System.out.println(ja.toString());
	
		session.put("zhuye_list", ja.toString());
		return "success";
	}

}
