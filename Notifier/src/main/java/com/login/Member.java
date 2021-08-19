package com.login;

public class Member {
	
	private String uname,phone, email,password,cpassword  ;

	
	public Member() {
		super();
	}

	public Member(String uname, String phone, String email, String password,String cpassword) {
		super();
		this.uname = uname;
		this.phone = phone;
		this.email = email;		
		this.password = password;
		this.cpassword = cpassword;

	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	

}