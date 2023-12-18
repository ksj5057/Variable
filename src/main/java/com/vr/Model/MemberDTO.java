package com.vr.Model;

public class MemberDTO {
	// 이름
	private String mname;
	// 아이디
	private String id;
	// 비밀번호
	private String pw;
	// 차트번호
	private String rrn;
	// 성별
	private String gender;
	// 생년월일
	private String birth;
	// 나이
	private int age;
	// 로그인 관리
	private int login_value;
	// 의사면허번호
	private String dl;
	//진료과
	private String md;
	
	private String position;
	
	
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDl() {
		return dl;
	}
	public void setDl(String dl) {
		this.dl = dl;
	}
	public String getMd() {
		return md;
	}
	public void setMd(String md) {
		this.md = md;
	}
	
	
	
	public int getLogin_value() {
		return login_value;
	}
	public void setLogin_value(int login_value) {
		this.login_value = login_value;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
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
	
	
	@Override
	public String toString() {
		return "MemberDTO [mname=" + mname + ", id=" + id + ", pw=" + pw + ", rrn=" + rrn + "]";
	}
	
	
} 
   