package com.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class liuyanAction extends ActionSupport {
	private String user;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}

	public String liuyan() {
		
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		jdbcDao dao = new jdbcDao("fengniubang");
		ResultSet res = dao.select_from_Table("message");
		JsonArray ja = new JsonArray();
		try {
			int i = 0;
			while (res.next()) {

				JsonObject o = new JsonObject();
				o.addProperty("MessID " + i, res.getString("MessID"));
				o.addProperty("UserID " + i, res.getString("UserID"));
				o.addProperty("UserID2 " + i, res.getString("UserID2"));
				o.addProperty("Message " + i, res.getString("Message"));
				o.addProperty("MessDate "+i, res.getString("MessDate"));

				ja.add(o);
				i++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		System.out.println(ja.toString());
		session.put("message_list", ja.toString());
		return "success";

	}
}
