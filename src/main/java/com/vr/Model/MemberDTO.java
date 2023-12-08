package com.vr.Model;

public class MemberDTO {
	// 이름
	private String mname;
	// 아이디
	private String id;
	// 비밀번호
	private String pw;
	// 주민번호
	private String rrn;
	
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
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
	public String getRrn() {
		return rrn;
	}
	public void setRrn(String rrn) {
		this.rrn = rrn;
	}
	
} 
   