package com.vr.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BiometricController {

	String pattern = "MM월 dd일";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	java.util.Date now = new java.util.Date();
	String nowString = sdf.format(now);
	
	//소아과병동 홈페이로 접속.
	@GetMapping("bmain")
	public String biometricMain() {
		return "biometric/bmain";
	}

	//소아과 301호실 페이지로 접속
	@GetMapping("r301")
	public String r301() {
		return "biometric/room/r301";
	}

	//소아과 302호실 페이지로 접속
	@GetMapping("r302")
	public String r302() {
		return "biometric/room/r302";
	}

	//소아과 302호실 페이지로 접속
	@GetMapping("r303")
	public String r303() {
		return "biometric/room/r303";
	}

	//소아과 아이들 상세보기 페이지로 이동
	@GetMapping("babydetail")
	public String babydtailed(Model model) {
		//현재 날짜
		model.addAttribute("now", nowString);
		//시간
		int time = 01;
		model.addAttribute("time", time);
		return "biometric/room/detail/babydetail";
	}

}
