package com.vr.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@GetMapping("/")
	public String Main() {
		return "main_m";
	}
	
	@PostMapping("main_m")
	public void reMain(HttpSession session) {
	}
}
