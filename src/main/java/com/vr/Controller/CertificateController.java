package com.vr.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CertificateController {

	@GetMapping("Certificate_L")
	public String Certificate() {
		return "Certificate/Certificate_L";
	}
	
}
