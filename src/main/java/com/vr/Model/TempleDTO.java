package com.vr.Model;

import java.math.BigInteger;


public class TempleDTO {
	// 온도값	
	private String temp;
	// 측정날짜
	private BigInteger today;
	
	
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public BigInteger getToday() {
		return today;
	}
	public void setToday(BigInteger today) {
		this.today = today;
	}
	
	@Override
	public String toString() {
		return "TempleDTO [temp=" + temp + ", today=" + today + ", getTemp()=" + getTemp() + ", getToday()="
				+ getToday() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public TempleDTO getTemp(String seq) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
