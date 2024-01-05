package com.vr.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vr.Model.TempleDTO;
import com.vr.Service.TempleService;

@Controller
public class TempleController {

	@Autowired
	TempleService ts;
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String temple(TempleDTO td, Model model) {
		// select 값을 tmps에 저장
		model.addAttribute("temple", ts.temp_s(td));
		return "biometric/test";
	}

	
}
