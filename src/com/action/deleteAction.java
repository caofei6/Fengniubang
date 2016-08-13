package com.action;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionSupport;

public class deleteAction extends ActionSupport{

	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String delete(){
		jdbcDao dao = new jdbcDao("fengniubang");
		dao.delete_from_table("user", id, "", "");
		return "success";
	}
	
}
