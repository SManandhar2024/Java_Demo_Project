package com.servlet;

public class Signup {
      String username;
      String password;
      String gender;
	public Signup(String username, String password, String gender) {
		super();
		this.username = username;
		this.password = password;
		this.gender = gender;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getGender() {
		return gender;
	}
	@Override
	public String toString() {
		return "Signup [username=" + username + ", password=" + password + ", gender=" + gender + "]";
	}
      
    	  
}
