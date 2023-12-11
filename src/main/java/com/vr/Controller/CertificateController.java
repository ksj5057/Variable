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
	
	//재증명 발급 상세내역 수술확인서
	@GetMapping("OperationCertificateDetails_L")
	public String OperationCertificateDetails_L() {
		return "Certificate/OperationCertificateDetails_L";
	}
	
	//재증명 발급 입 퇴원 확인서
	@GetMapping("HospitalizationCertificateDetails_L")
	public String HospitalizationCertificateDetails_L() {
		return "Certificate/HospitalizationCertificateDetails_L";
	}
	
	//재증명 발급 진료 확인서
	@GetMapping("ClinicCertificateDetails_L")
	public String ClinicCertificateDetails_L() {
		return "Certificate/ClinicCertificateDetails_L";
	}
}
