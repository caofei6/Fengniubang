package com.action;



import com.dao.jdbc.jdbcDao;
import com.opensymphony.xwork2.ActionSupport;

public class registerAction extends ActionSupport {

	private String username;
	private String password;
	private String repassword;

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

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	
	public String register(){
		System.out.println("���룺"+password);
		System.out.println("ȷ�����룺"+repassword);
		jdbcDao dao = new jdbcDao("fengniubang");
		
		if(!dao. select_UserID(username)){
			if(!password.equals(repassword)){
				System.out.println("���벻һ��");
				return "fail";
			}
			else
			{
				dao.User_insert(username, password);
				return "success";
			}			
		}
		else
		{
			System.out.println("���û��Ѵ��ڣ�������û���");
			return "fail";
		}
		
	}

}
