package com.vr.Model;

public class TempleDTO {

	// 측정날짜
	private String today;
	// 측정온도
	private String temp;
	
	private int bno;
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	@Override
	public String toString() {
		return "TempleDTO [today=" + today + ", temp=" + temp + ", bno=" + bno + "]";
	}
	
	
	
}
