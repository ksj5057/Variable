package com.vr.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.vr.Model.MemberDTO;
import com.vr.Service.CertificateService;

@Controller
public class CertificateController {

	@Autowired
	CertificateService cs;
	
	//재증명 발급 화면으로 이동
	//환자의 3개월치 이력이 있는지 확인하고 창 띄어주기.
	@GetMapping("Certificate_L")
	public String Certificate(MemberDTO md) {
//		if(cs.serch(md) > 0) {
//			return "Certificate/Certificate_L";
//		}
//		
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
	public String ClinicCertificateDetails_La() {
		return "Certificate/ClinicCertificateDetails_L";
	}
}
