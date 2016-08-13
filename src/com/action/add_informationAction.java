package com.action;

import java.util.Map;

import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class add_informationAction extends ActionSupport {

	private String UserPho;
	private String UserPsw;
	private String UserName;
	private String UserSex;
	private String UserQQ;
	private String UserTel;
	private String UserIc;
	private String UserMail;

	public String getUserPho() {
		return UserPho;
	}

	public void setUserPho(String userPho) {
		UserPho = userPho;
	}

	public String getUserPsw() {
		return UserPsw;
	}

	public void setUserPsw(String userPsw) {
		UserPsw = userPsw;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getUserSex() {
		return UserSex;
	}

	public void setUserSex(String userSex) {
		UserSex = userSex;
	}

	public String getUserQQ() {
		return UserQQ;
	}

	public void setUserQQ(String userQQ) {
		UserQQ = userQQ;
	}

	public String getUserTel() {
		return UserTel;
	}

	public void setUserTel(String userTel) {
		UserTel = userTel;
	}

	public String getUserIc() {
		return UserIc;
	}

	public void setUserIc(String userIc) {
		UserIc = userIc;
	}

	public String getUserMail() {
		return UserMail;
	}

	public void setUserMail(String userMail) {
		UserMail = userMail;
	}
	
	public String add_information(){
		
		ActionContext actionContext = ActionContext.getContext();
		Map session=actionContext.getSession();
		Object user=session.get("current_id");
		//System.out.println(user);
		System.out.println("a");
		
		jdbcDao dao = new jdbcDao("fengniubang");
		dao.update_User_information(user.toString(), UserName, UserSex, UserQQ, UserTel, UserIc, UserMail);
		System.out.println("更新用户信息成功");
		return "success";
	}

}
