package com.vr.Mapper;

import com.vr.Model.TemperatureDTO;

public interface TemperatureMapper {
	
	
	//일괄 온도 조절
	public int batches_tem(TemperatureDTO td);
	
	//세부 온도 조절 301
	public int bt301_tem(TemperatureDTO td);
	
	//세부 온도 조절 302
	public int bt302_tem(TemperatureDTO td);
	
	//세부 온도 조절 303
	public int bt303_tem(TemperatureDTO td);
	
	////실내온도 값 가져오기
	public TemperatureDTO Indoortemperature();
	

}
