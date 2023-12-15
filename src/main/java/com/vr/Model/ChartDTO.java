package com.vr.Model;

import java.sql.Date;

public class ChartDTO {
	// 차트 번호
	private int cno;
	// 이름
	private String cname;
	// 주민번호
	private String rrn;
	// 병명
	private String disease;
	// 수술명
	private String operation;
	// 수술날짜
	private String operd;
	// 입원날짜
	private String enterd;
	// 퇴원날짜
	private String exitd;
	// 환자코드
	private int dcode;
	
	private String speciality;
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getRrn() {
		return rrn;
	}
	public void setRrn(String rrn) {
		this.rrn = rrn;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getOperation() {
		return operation;
	}
	public String getOperd() {
		return operd;
	}
	public void setOperd(String operd) {
		this.operd = operd;
	}
	public String getEnterd() {
		return enterd;
	}
	public void setEnterd(String enterd) {
		this.enterd = enterd;
	}
	public String getExitd() {
		return exitd;
	}
	public void setExitd(String exitd) {
		this.exitd = exitd;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	
	public int getDcode() {
		return dcode;
	}
	public void setDcode(int dcode) {
		this.dcode = dcode;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	
	@Override
	public String toString() {
		return "ChartDTO [cno=" + cno + ", cname=" + cname + ", rrn=" + rrn + ", disease=" + disease + ", operation="
				+ operation + ", operd=" + operd + ", enterd=" + enterd + ", exitd=" + exitd + ", dcode=" + dcode + "]";
	}
	
 	

	
	   
	
	
	
}

