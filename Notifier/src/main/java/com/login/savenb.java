package com.login;

public class savenb {
	
	public savenb() {
		super();
	}

	
	public savenb(String uname, String noteb) {
		super();
		this.uname = uname;
		this.noteb = noteb;
	}

	private String uname,noteb;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getNoteb() {
		return noteb;
	}

	public void setNoteb(String noteb) {
		this.noteb = noteb;
	}

}
