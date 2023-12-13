package com.vr.Model;

public class CertificateListDTO {
	
	private String hc; // varchar(4)not null, -- 확인서 번호= 진료 확인서(hc) -  01// 입퇴원 확인서(hc) - 02// 수술 확인서(hc) - 03
	private String mn; // varchar(20) primary key, -- 문서번호 = 차트번호 + 확인서번호 + ('-'발급갯수(0++)) // 0101-01 
	private String content; // varchar(500)not null,
	private	String id; // varchar(20)not null,
	private	String docname;// varchar(10)not null,
	private	String firwriting;
	private	String upwriting; //datetime
	
	public String getUpwriting() {
		return upwriting;
	}
	public void setUpwriting(String upwriting) {
		this.upwriting = upwriting;
	}
	public String getHc() {
		return hc;
	}
	public void setHc(String hc) {
		this.hc = hc;
	}
	public String getMn() {
		return mn;
	}
	public void setMn(String mn) {
		this.mn = mn;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	public String getFirwriting() {
		return firwriting;
	}
	public void setFirwriting(String firwriting) {
		this.firwriting = firwriting;
	}
	
	@Override
	public String toString() {
		return "CertificateListDTO [hc=" + hc + ", mn=" + mn + ", content=" + content + ", id=" + id + ", docname="
				+ docname + ", firwriting=" + firwriting + ", upwriting=" + upwriting + "]";
	}
	
}
