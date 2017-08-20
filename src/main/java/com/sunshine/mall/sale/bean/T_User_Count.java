package com.sunshine.mall.sale.bean;

public class T_User_Count {
	
	
	
	private Integer id;
	private String username;
	private String nickname;
	private String pswd;
	private String realname;
	private String phone_number;
	private String email;
	private String picture;
	private String level;
	
	
	

	@Override
	public String toString() {
		return "T_User_Count [id=" + id + ", username=" + username + ", nickname=" + nickname + ", pswd=" + pswd
				+ ", realname=" + realname + ", phone_number=" + phone_number + ", email=" + email + ", picture="
				+ picture + ", level=" + level + "]";
	}
	
	
	
	
	public Integer getId() {
		return id;
	}




	public void setId(Integer id) {
		this.id = id;
	}




	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPswd() {
		return pswd;
	}
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
}
