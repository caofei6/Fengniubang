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
		System.out.println("密码："+password);
		System.out.println("确认密码："+repassword);
		jdbcDao dao = new jdbcDao("fengniubang");
		
		if(!dao. select_UserID(username)){
			if(!password.equals(repassword)){
				System.out.println("密码不一致");
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
			System.out.println("该用户已存在，请更换用户名");
			return "fail";
		}
		
	}

}
