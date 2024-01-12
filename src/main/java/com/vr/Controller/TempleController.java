package com.vr.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vr.Model.MemberDTO;
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

	@RequestMapping(value = "/test.action", method = RequestMethod.GET)
	public ResponseEntity<?> temple1(TempleDTO td, Model model, HttpSession session) {

		return new ResponseEntity<>(ts.temp_s(td), HttpStatus.OK);
	}
	@RequestMapping(value = "/test/action/bt301", method = RequestMethod.GET)
	public ResponseEntity<String> temple2(TempleDTO td, Model model, HttpSession session) {
		return new ResponseEntity<>(ts.bt301(), HttpStatus.OK);

}
}
