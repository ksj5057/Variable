package com.vr.Controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.vr.Model.MemberDTO;
import com.vr.Service.CertificateService;

@Controller
public class CertificateController {

	@Autowired
	CertificateService cs;
	
	//재증명 발급 화면으로 이동
	@GetMapping("Certificate_L")
	public String Certificate(MemberDTO md,HttpSession session,HttpServletResponse response) {
	/*	//로그인 시 DB와 비교하여 가져온 세션 정보값을 가져와서 MemberDTO 타입의 login변수에 저장
		MemberDTO login = (MemberDTO)session.getAttribute("login");
		
		
		//로그인을 하지않고 재증명 이용 시 "로그인 후 이용부탁드립니다' 멘트 후 로그인창으로 이동
		if(login == null) {
			
			try {
					response.setContentType("text/html; charset=utf-8");
					PrintWriter w = response.getWriter();
					w.write("<script>alert('로그인 후 이용부탁드립니다'); location.href='Login_L';</script>");
					w.flush();
					w.close();
			    } catch(Exception e) {
					e.printStackTrace();
			    }
			    	return "로그인 창 이동"; //리턴은 작동하지않음.
			 
			 //로그인을 하고 재증명 이용 시 DB에 있는 차트리스트에서 사용자 아이디와 10년치 날짜로 조회 있다면 건 수를 반환 함.
			 
			 //로그인 하였으나 진료기록이 없다면 진료기록이 없다고 멘트 후 재증명 창으로 이동
			}
		else if(cs.serch(login) == 0 ) {
				
				try {
					response.setContentType("text/html; charset=utf-8");
					PrintWriter w = response.getWriter();
					w.write("<script>alert('진료기록이 없습니다.'); location.href='Serch';</script>");
					w.flush();
					w.close();
			    } catch(Exception e) {
					e.printStackTrace();
			    }
				return "재증명 창으로 이동"; // 리턴은 작동은 작동하지않음
				
			//로그인 하고 진료기록이 있다면 재증명 창으로 이동
			}else {*/
				return "Certificate/Certificate_L";
			}
			
			
		
	
	
	//진료기록 확인 후 이동 
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
	public String ClinicCertificateDetails_La(HttpSession session,MemberDTO md, Model model) {
	
		return "Certificate/ClinicCertificateDetails_L";
	}

}
