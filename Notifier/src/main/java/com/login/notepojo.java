package com.login;


public class notepojo {
	private String uname,nbname,note, status,tag,desp  ;
	private String sd,ed,rd;
	
	public notepojo() {
		super();
	}
	
	
	
	
	public notepojo(String uname, String nbname, String note, String status, String tag, String desp, String sd, String ed,
			String rd) {
		super();
		this.uname = uname;
		this.nbname = nbname;
		this.note = note;
		this.status = status;
		this.tag = tag;
		this.desp = desp;
		this.sd = sd;
		this.ed = ed;
		this.rd = rd;
	}
	
	
	
	
	
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getNbname() {
		return nbname;
	}
	public void setNbname(String nbname) {
		this.nbname = nbname;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getDesp() {
		return desp;
	}
	public void setDesp(String desp) {
		this.desp = desp;
	}
	public String getSd() {
		return sd;
	}
	public void setSd(String sd) {
		this.sd = sd;
	}
	public String getEd() {
		return ed;
	}
	public void setEd(String ed) {
		this.ed = ed;
	}
	public String getRd() {
		return rd;
	}
	public void setRd(String rd) {
		this.rd = rd;
	}

}
