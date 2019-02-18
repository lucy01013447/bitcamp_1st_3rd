package com.cafe24.bitcamp.member.domain;

public class UserVO {
	//추후 삭제
	private String id;
	private String pw;
	
	private int user_id;
	private String email;
	private String password;
	private String name;
	private String nickname;
	private String email_hash;
	private boolean email_check;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getUser_id() {
		return user_id;
	}
	
	
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail_hash() {
		return email_hash;
	}
	public void setEmail_hash(String email_hash) {
		this.email_hash = email_hash;
	}
	public boolean isEmail_check() {
		return email_check;
	}
	public void setEmail_check(boolean email_check) {
		this.email_check = email_check;
	}
	
	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", email=" + email + ", password=" + password + ", name=" + name
				+ ", nickname=" + nickname + ", email_hash=" + email_hash + ", email_check=" + email_check + "]";
	}
	
}
