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
		System.out.println(bt);
		int count = 0;
		if(bt == 1) {
			td.setBt(bt);
			td.setTem(tem);
			count =	ti.bt301_tem(td);
		}else if(bt == 2) {
			td.setBt(bt);
			td.setTem(tem);
			count = ti.bt302_tem(td);
			
		}else if(bt == 3) {
			td.setBt(bt);
			td.setTem(tem);
			count =	ti.bt303_tem(td);
			
		}else if(bt == 4) {
			td.setBt(bt);
			td.setTem(tem);
			count =ti.batches_tem(td);
		}
		

		return new ResponseEntity<>((count),HttpStatus.OK);
	
	}
	
}


