package com.action;

import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class checkUserNameAction extends ActionSupport {

	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public boolean check() {
		/*ActionContext actionContext=ActionContext.getContext();
		Map sess=actionContext.getSession();
		sess.put("current_id", username);*/
		System.out.println(username);
		
		jdbcDao jdbc = new jdbcDao("fengniubang");
		System.out.println("我来了");
		System.out.println("userID "+username);
		if(jdbc.select_id("username","","user")){
			
			
			System.out.println("check用户名已存在");
			return false;		
		}
		return true;

	}

}
