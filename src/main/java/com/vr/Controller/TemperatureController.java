package com.vr.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.vr.Model.TemperatureDTO;
import com.vr.Service.TemperatureServieceImpl;

@Controller
public class TemperatureController {
	
	@Autowired
	TemperatureServieceImpl ti;
	

	@GetMapping("/get/room/tem/{bt}/{tem}")
	public ResponseEntity<?> controller(@PathVariable int bt, @PathVariable int tem, TemperatureDTO td, Model model){
		//카운터 초기화
		int count = 0;
		
		// bt의 값이 1이라면
		if(bt == 1) {
			// DTO의 bt(구분번호), tem(온도)저장
			td.setBt(bt);
			td.setTem(tem);
			
			//db의 301호실의 온도 값을 저장하면 count에 값을 저장 1= 등록 0=실패
			count =	ti.bt301_tem(td);
		
		// bt의 값이 2이라면
		}else if(bt == 2) {
			// DTO의 bt(구분번호), tem(온도)저장
			td.setBt(bt);
			td.setTem(tem);
			
			//db의 302호실의 온도 값을 저장하면 count에 값을 저장 1= 등록 0=실패
			count = ti.bt302_tem(td);
			
			
		// bt의 값이 3이라면	
			// DTO의 bt(구분번호), tem(온도)저장
		}else if(bt == 3) {
			td.setBt(bt);
			td.setTem(tem);
			
			//db의 303호실의 온도 값을 저장하면 count에 값을 저장 1= 등록 0=실패
			count =	ti.bt303_tem(td);
			
			
		// bt의 값이 4이라면	
			// DTO의 bt(구분번호), tem(온도)저장
		}else if(bt == 4) {
			td.setBt(bt);
			td.setTem(tem);
			
			//db의 모든 호실의 온도 값을 저장하면 count에 값을 저장 1= 등록 0=실패
			count =ti.batches_tem(td);
		}
		
				//카운터의 값이 0 or 1을 반환
		return new ResponseEntity<>((count),HttpStatus.OK);
	
	}
	
}


