
package com.vr.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

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
	@SuppressWarnings("finally")
	@GetMapping("Certificate_L")
	public String Certificate(MemberDTO md, HttpServletResponse response, HttpSession session){
		//세션에 저장된 정보를 다시 MemberDTO의 변수 login에 저장
		MemberDTO login = (MemberDTO)session.getAttribute("login"); 
		if(login == null) {//로그인을 안하고 재증명으로 이동시
			try {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter w = response.getWriter();
				w.write("<script>alert('로그인 후 이용 부탁드립니다.');location.href='Login_L';</script>");
				w.flush();
				w.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return "Certificate/Certificate_L";

		}else if(cs.serch(login) == 0 ){
			//로그인을 하고 재증명으로 이동 시 환자의 진료기록을 확인하고 진료기록이 없으면 없다고 띄어주고 재증명 홈페이지로 이동.
			try {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter w = response.getWriter();
				w.write("<script>alert('진료기록이 없습니다');location.href='Serch'</script>");
				w.flush();
				w.close();
			} catch(Exception e) {
				e.printStackTrace();
			}	
			finally{
				return "Certificate/Certificate_L";
			}
		}else {
			//진료기록이 있다면 재증명 창으로 이동.
			return "Certificate/Certificate_L";

		}	


	}




	//재증명 홈페이지 진료내역 확인
	@GetMapping("Serch")
	public String serch() {
		return "Certificate/Certificate_L";
	}

	//수술 확인서
	@GetMapping("OperationCertificateDetails_L")
	public String OperationCertificateDetails_L() {
		return "Certificate/OperationCertificateDetails_L";
	}

	//입퇴원 확인서
	@GetMapping("HospitalizationCertificateDetails_L")
	public String HospitalizationCertificateDetails_L() {
		return "Certificate/HospitalizationCertificateDetails_L";
	}

	//진료 확인서
	@GetMapping("ClinicCertificateDetails_L")
	public String ClinicCertificateDetails_La() {
		return "Certificate/ClinicCertificateDetails_L";
	}
}
