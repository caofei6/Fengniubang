package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class dianzanAction extends ActionSupport {

	private String user;
	private int state;   //0未点赞，1已点赞

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
    public String dianzan(){
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
    	jdbcDao jdbc = new jdbcDao("fengniubang");
    	System.out.println("当前的用户:" +user);
    	System.out.println("当前的用户:" +user);
    	System.out.println("当前的状态:" +state);
    	
    	if(state==0){
    	jdbc.update_user_dianzan(user, getState());   //点赞
    	return "success"; 
    	}
    	if(state==1){
    	jdbc.update_user_dianzan(user, getState());  //取消赞
    	return "success"; 
    	}
    	return "false";
    		
    }

}
