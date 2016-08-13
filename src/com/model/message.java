package com.model;

import java.util.Date;

public class message {
	private String MessID;
	private String UserID;
	private String UserID2;
	private String MessHead;
	private String Message;
	private String MessDate;
	
	public message(String messID, String userID, String userID2,
			String messHead, String message, String messDate) {
		MessID = messID;
		UserID = userID;
		UserID2 = userID2;
		MessHead = messHead;
		Message = message;
		MessDate = messDate;
	}
	
	public message(){
		
	}

	public String getMessID() {
		return MessID;
	}

	public void setMessID(String messID) {
		MessID = messID;
	}

	public String getUserID() {
		return UserID;
	}

	public void setUserID(String userID) {
		UserID = userID;
	}

	public String getUserID2() {
		return UserID2;
	}

	public void setUserID2(String userID2) {
		UserID2 = userID2;
	}

	public String getMessHead() {
		return MessHead;
	}

	public void setMessHead(String messHead) {
		MessHead = messHead;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}

	public String getMessDate() {
		return MessDate;
	}

	public void setMessDate(String messDate) {
		MessDate = messDate;
	}

	@Override
	public String toString() {
		return "message [MessID=" + MessID + ", UserID=" + UserID
				+ ", UserID2=" + UserID2 + ", MessHead=" + MessHead
				+ ", Message=" + Message + ", MessDate=" + MessDate + "]";
	}
	

}
