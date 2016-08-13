package com.action;

import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class logAction extends ActionSupport {

	private String username;
	private String password;
	private String identity;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String log() {
		jdbcDao dao = new jdbcDao("fengniubang");
		if (identity.equals("user")) {
			if (dao.Logging("user", username, password)) {
				System.out.println("�˺�����ƥ����ȷ");
				ActionContext actionContext = ActionContext.getContext();
				Map session = actionContext.getSession();
				session.put("current_id", username);
				System.out.println(username);
				if (dao.User_information_null(username)) {
					System.out.println("��Ϣ�ǿյģ���Ҫ���");
					return "user_success_nullInformation";
				} else {
					System.out.println("��Ϣ�Ǻõģ�����ֱ�ӵ�¼");
					return "user_success";
				}
			} else {
				System.out.println("�û���������û��ƥ����");
				return "fail_log";
			}
		} else if (identity.equals("admin")) {
			if (dao.Logging("admin", username, password)) {
				ActionContext actionContext = ActionContext.getContext();
				Map session = actionContext.getSession();
				session.put("current_id", username);
				return "admin_success";
			}
		}
		return "fail_log";
	}
}
