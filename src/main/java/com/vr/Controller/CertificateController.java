package com.vr.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CertificateController {

	
	//재증명 발급 화면으로 이동
	@GetMapping("Certificate_L")
	public String Certificate() {
		return "Certificate/Certificate_L";
	}
	
	//진료 기록 확인하기
	@GetMapping("Serch")
	public String serch() {
	 return "Certificate/Certificate_L";
	}
	
	//재증명 발급 상세내역
	@GetMapping("CertificateDetails_L")
	public String CertificateDetails() {
		return "Certificate/CertificateDetails_L";
	}
}
