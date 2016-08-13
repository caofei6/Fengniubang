package com.model;

public class user {
	public String UserID;
	public String UserPho;
	public String UserPsw;
	public String UserName;
	public String UserSex;
	public String UserQQ;
	public String UserMess;
	public String UserTel;
	public String UserIc;
	public String UserMail;
	public String UserFans;
	public String State;

	public user(String userID, String userPho, String userPsw, String userName,
			String userSex, String userQQ, String userMess, String userTel, String userIc,
			String userMail, String userFans, String state)  {
		super();
		UserID = userID;
		UserPho = userPho;
		UserPsw = userPsw;
		UserName = userName;
		UserSex = userSex;
		UserQQ = userQQ;
		UserMess = userMess;
		UserTel = userTel;
		UserIc = userIc;
		UserMail = userMail;
		UserFans = userFans;
		State = state;
	}
	
	public user(){
		
	}

	public String getUserID() {
		return UserID;
	}

	public void setUserID(String userID) {
		UserID = userID;
	}

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

	
	public String getUserMess() {
		return UserMess;
	}

	public void setUserMess(String userMess) {
		UserMess = userMess;
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

	public String getUserFans() {
		return UserFans;
	}

	public void setUserFans(String userFans) {
		UserFans = userFans;
	}

	public String getState() {
		return State;
	}
	
	public void setState(String state) {
		State = state;
	}

	@Override
	public String toString() {
		return "user [UserID=" + UserID + ", UserPho=" + UserPho + ", UserPsw="
				+ UserPsw + ", UserName=" + UserName + ", UserSex=" + UserSex
				+ ", UserQQ=" + UserQQ + ", UserMess=" + UserMess
				+ ", UserTel=" + UserTel + ", UserIc=" + UserIc + ", UserMail="
				+ UserMail + ", UserFans=" + UserFans + ", State=" + State
				+ "]";
	}


}
