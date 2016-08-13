package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class editmymessAction extends ActionSupport {

	private String user;
	private String mymess;

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getMymess() {
		return mymess;
	}

	public void setMymess(String mymess) {
		this.mymess = mymess;
	}


	public String editmymess() {

		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		jdbcDao dao = new jdbcDao("fengniubang");
		ResultSet res = dao.updateMyMess(user, mymess);


		return "success";

	}
}
