package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class dianzanAction extends ActionSupport {

	private String user;
	private int state;   //0δ���ޣ�1�ѵ���

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
    	System.out.println("��ǰ���û�:" +user);
    	System.out.println("��ǰ���û�:" +user);
    	System.out.println("��ǰ��״̬:" +state);
    	
    	if(state==0){
    	jdbc.update_user_dianzan(user, getState());   //����
    	return "success"; 
    	}
    	if(state==1){
    	jdbc.update_user_dianzan(user, getState());  //ȡ����
    	return "success"; 
    	}
    	return "false";
    		
    }

}
