package com.action;

import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class add_liuyanAction extends ActionSupport{
	
	private String user2;
	private String message;
	public String getUser2() {
		return user2;
	}
	public void setUser2(String user2) {
		this.user2 = user2;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
    
	
	public String add_liuyan(){
		System.out.println(user2);
		System.out.println(message);
		System.out.println(message.toString());
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();		
		jdbcDao dao=new jdbcDao("fengniubang");
		dao.insert_message(session.get("current_id").toString(), user2, message);
		
		return "success";
	}

}
