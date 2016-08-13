package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class rankAction extends ActionSupport {

	public String rank(){
		jdbcDao jdbc = new jdbcDao("fengniubang");
		
		ActionContext actionContext = ActionContext.getContext();
		
		@SuppressWarnings("rawtypes")
		Map session = actionContext.getSession();
		
		ResultSet rs = jdbc.order_User();
		JsonArray ja = new JsonArray();
	    int i = 0;
	    
	    try{
	    	while(rs.next()){ 
	    		JsonObject o = new JsonObject();
	    		o.addProperty("UserID " + i, rs.getString("UserID"));
	    		o.addProperty("UserPho " + i, rs.getString("UserPho"));
	    		o.addProperty("UserName " + i, rs.getString("UserName"));
	    		o.addProperty("UserSex " + i, rs.getString("UserSex"));
	    		o.addProperty("UserQQ " + i, rs.getString("UserQQ"));
	    		o.addProperty("UserTel " + i, rs.getString("UserSex"));
	    		o.addProperty("UserIc " +  i, rs.getString("UserIc"));
	    		o.addProperty("UserFans " + i, rs.getString("UserFans"));
	    		o.addProperty("State "+i, rs.getString("State"));
	    		
	    		ja.add(o);
	    	    i++;
	    	}
	    }catch(SQLException e){
	    	e.printStackTrace();
	    }
	
	    System.out.println("rankΩ‚ŒˆÕÍ±œ£°");
	    System.out.println(ja.toString());
	    
	    session.put("rank_list", ja.toString());
	    
	    return "success";
		
	}
    
}
