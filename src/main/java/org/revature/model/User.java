package org.revature.model;

public class User {
	private int userId;
	private String userEmail;
	private String userPassword;
	
	public User(int userId, String userEmail, String userPassword) {
		this.userId = userId;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
	}


	public User(String userEmail, String userPassword) {
		this.userEmail = userEmail;
		this.userPassword = userPassword;
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}	

}
