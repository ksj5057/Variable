package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.TemperatureMapper;
import com.vr.Model.TemperatureDTO;

@Service
public class TemperatureServiece implements TemperatureServieceImpl {
	
	@Autowired
	TemperatureMapper tm;
	
	
		//일괄 온도 조절
		public int batches_tem(TemperatureDTO td) {
			return tm.batches_tem(td);
		};
		
		//세부 온도 조절 301
		public int bt301_tem(TemperatureDTO td) {
			return tm.bt301_tem(td);
		};
		
		//세부 온도 조절 302
		public int bt302_tem(TemperatureDTO td) {
			return tm.bt302_tem(td);
		};
		
		//세부 온도 조절 303
		public int bt303_tem(TemperatureDTO td) {
			return tm.bt303_tem(td);
		};
		
		//실내온도 값 가져오기
		public TemperatureDTO Indoortemperature() {
			return tm.Indoortemperature();
		}	
		
}
