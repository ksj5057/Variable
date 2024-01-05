package com.vr.Model;

public class TempleDTO {

	// 측정날짜
	private String today;
	// 측정온도
	private String temp;
	
	
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
		return "TempleDTO [today=" + today + ", temp=" + temp + ", getToday()=" + getToday() + ", getTemp()="
				+ getTemp() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
}
