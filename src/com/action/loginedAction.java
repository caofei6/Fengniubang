package com.action;


import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class loginedAction {

	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String logined(){
	ActionContext actionContext=ActionContext.getContext();
	Map sess=actionContext.getSession();
	sess.put("current_id", username);
	System.out.println(username);
	return "success";
	}
	
	
}
