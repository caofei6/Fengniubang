package com.action;

import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class xindianzanAction extends ActionSupport{
	
	private String u1;
	private String u2;
	public String getU1() {
		return u1;
	}
	public void setU1(String u1) {
		this.u1 = u1;
	}
	public String getU2() {
		return u2;
	}
	public void setU2(String u2) {
		this.u2 = u2;
	}
	
	ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	jdbcDao jdbc = new jdbcDao("fengniubang");
	
    public String dianzan(){
    	if(jdbc.select_fans(u1,u2))                //查询到点过赞了
    	{
    		System.out.println("点过赞了");
    		jdbc.update_zan(u1, u2);   //点赞
    		return "success";
    	}
    	else{
    		jdbc.update_quxiaozan(u1, u2);  //取消赞
    		return "success";
    	}	
    }

}
