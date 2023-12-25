package com.vr.Controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;
import com.vr.Model.pageDTO;
import com.vr.Service.CertificateService;

@Controller
public class CertificateController {

	@Autowired
	CertificateService cs;
	
	//재증명 발급 화면으로 이동
	@GetMapping("Certificate_L")
	public String Certificate(MemberDTO md,HttpSession session,HttpServletResponse response) {
			//로그인 시 DB와 비교하여 가져온 세션 정보값을 가져와서 MemberDTO 타입의 login변수에 저장
		MemberDTO login = (MemberDTO)session.getAttribute("login");


		//로그인을 하지않고 재증명 이용 시 "로그인 후 이용부탁드립니다' 멘트 후 로그인창으로 이동
		if(login == null) {

			try {
					response.setContentType("text/html; charset=utf-8");
					PrintWriter w = response.getWriter();
					w.write("<script>alert('비로그인일 경우 서비스가 제한 될 수있습니다.'); location.href='Serch';</script>");
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
					w.write("<script>alert('비로그인일 경우 서비스가 제한 될 수있습니다.'); location.href='Serch';</script>");
					w.flush();
					w.close();
			    } catch(Exception e) {
					e.printStackTrace();
			    }
				return "재증명 창으로 이동"; // 리턴은 작동은 작동하지않음

			//로그인 하고 진료기록이 있다면 재증명 창으로 이동
			}else {
		return "Certificate/Certificate_L";
	}
	}

	//진료기록 확인 후 이동 
	@GetMapping("Serch")
	public String serch() {
		return "Certificate/Certificate_L";
	}

	//재증명 발급 상세내역 수술확인서
	@GetMapping("OperationCertificateDetails_L")
	public String OperationCertificateDetails_L(HttpSession session,MemberDTO md, Model model,HttpServletResponse response,CriteriaDTO cri) {
			MemberDTO login = (MemberDTO)session.getAttribute("login");
			if(login == null) {
				try {
					response.setContentType("text/html; charset=utf-8");
					PrintWriter w = response.getWriter();
					w.write("<script>alert('비로그인일 경우 서비스가 제한 될 수있습니다.'); location.href='Serch';</script>");
					w.flush();
					w.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
				return "로그인 창 이동";// 작동 안함
			}else{
				md = (MemberDTO)session.getAttribute("login");
				md.setHc("03");
				//진료 확인서의 문서번호
				String hc = md.getHc();
				//로그인 한 환자의 차트번호
				String rrn = md.getRrn();
				//조합하여 문서번호의 앞자리를 만듦
				String db = rrn + hc;
				cri.setDb(db+'%');
				cri.setRrn(rrn);
				md.setDb(cri.getDb());
				model.addAttribute("list", cs.Certificatelist(cri));
				//db에 있는 환자의 rrn값과 진료받아서 작성된 확인서의 문서번호로 몇 건있는지 int값으로 반환
				
				int total = cs.Certificateserch(md);
				model.addAttribute("paging", new pageDTO(cri, total));
		}
		return "Certificate/OperationCertificateDetails_L";
	}
	//재증명 리스트 선택 시 환자 정보 수술증명서에 출력
	@GetMapping("OperationCertificateDetails_Lr")
	public String OperationCertificateDetails_Lr(MemberDTO md, Model model,HttpSession session,CriteriaDTO cri) {
		
		Date day = new Date();
		SimpleDateFormat fDay = new SimpleDateFormat("yyyy년 MM월 dd일");
		String modi = fDay.format(day);
		md = cs.Cserch(md);
		md.setModi(modi);
		model.addAttribute("sert", md); 
	
	md = (MemberDTO)session.getAttribute("login");
	md.setHc("03");
	//진료 확인서의 문서번호
	String hc = md.getHc();
	//로그인 한 환자의 차트번호
	String rrn = md.getRrn();
	//조합하여 문서번호의 앞자리를 만듦
	String db = rrn + hc;
	cri.setDb(db+'%');
	cri.setRrn(rrn);
	md.setDb(cri.getDb());
	model.addAttribute("list", cs.Certificatelist(cri));
	//db에 있는 환자의 rrn값과 진료받아서 작성된 확인서의 문서번호로 몇 건있는지 int값으로 반환
	
	int total = cs.Certificateserch(md);
	model.addAttribute("paging", new pageDTO(cri, total));
	return "Certificate/OperationCertificateDetails_L";
	}
 
 
	//재증명 발급 입 퇴원 확인서
	@GetMapping("HospitalizationCertificateDetails_L")
	public String HospitalizationCertificateDetails_L(HttpSession session,MemberDTO md, Model model,HttpServletResponse response,CriteriaDTO cri) {
		MemberDTO login = (MemberDTO)session.getAttribute("login");
		if(login == null) {
			try {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter w = response.getWriter();
				w.write("<script>alert('비회원으로 접속하셨습니다. 문서 찾기함으로 이동합니다'); location.href='Login_L';</script>");
				w.flush();
				w.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return "로그인 창 이동";// 작동 안함
		}else{
			md = (MemberDTO)session.getAttribute("login");
			md.setHc("02");
			//진료 확인서의 문서번호
			String hc = md.getHc();
			//로그인 한 환자의 차트번호
			String rrn = md.getRrn();
			//조합하여 문서번호의 앞자리를 만듦
			String db = rrn + hc;
			cri.setDb(db+'%');
			cri.setRrn(rrn);
			md.setDb(cri.getDb());
			model.addAttribute("list", cs.Certificatelist(cri));
			//db에 있는 환자의 rrn값과 진료받아서 작성된 확인서의 문서번호로 몇 건있는지 int값으로 반환
			
			int total = cs.Certificateserch(md);
			model.addAttribute("paging", new pageDTO(cri, total));
		return "Certificate/HospitalizationCertificateDetails_L";
		}
	}
	
	//재증명 리스트 선택 시 환자 정보 입퇴원증명서에 출력
	@GetMapping("HospitalizationCertificateDetails_Lr")
	public String HospitalizationCertificateDetails_Lr(MemberDTO md, Model model,HttpSession session,CriteriaDTO cri) {
	model.addAttribute("sert", cs.Cserch(md));
	
	md = (MemberDTO)session.getAttribute("login");
	md.setHc("02");
	//진료 확인서의 문서번호
	String hc = md.getHc();
	//로그인 한 환자의 차트번호
	String rrn = md.getRrn();
	//조합하여 문서번호의 앞자리를 만듦
	String db = rrn + hc;
	cri.setDb(db+'%');
	cri.setRrn(rrn);
	md.setDb(cri.getDb());
	model.addAttribute("list", cs.Certificatelist(cri));
	//db에 있는 환자의 rrn값과 진료받아서 작성된 확인서의 문서번호로 몇 건있는지 int값으로 반환
	
	int total = cs.Certificateserch(md);
	model.addAttribute("paging", new pageDTO(cri, total));
	return "Certificate/HospitalizationCertificateDetails_L";
	}
	
	
///////////////////////////////////////////////////////////////////////////////
	//재증명 발급 진료 확인서
	@GetMapping("ClinicCertificateDetails_L")
	public String ClinicCertificateDetails_La(HttpSession session,MemberDTO md, Model model,HttpServletResponse response,CriteriaDTO cri) {
		MemberDTO login = (MemberDTO)session.getAttribute("login");
		if(login == null) {
			try {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter w = response.getWriter();
				w.write("<script>alert('비회원으로 접속하셨습니다. 문서 찾기함으로 이동합니다'); location.href='Login_L';</script>");
				w.flush();
				w.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return "로그인 창 이동";// 작동 안함
		}else{
			md = (MemberDTO)session.getAttribute("login");
			md.setHc("01");
			//진료 확인서의 문서번호
			String hc = md.getHc();
			//로그인 한 환자의 차트번호
			String rrn = md.getRrn();
			//조합하여 문서번호의 앞자리를 만듦
			String db = rrn + hc;
			cri.setDb(db+'%');
			cri.setRrn(rrn);
			md.setDb(cri.getDb());
			model.addAttribute("list", cs.Certificatelist(cri));
			//db에 있는 환자의 rrn값과 진료받아서 작성된 확인서의 문서번호로 몇 건있는지 int값으로 반환
			
			int total = cs.Certificateserch(md);
			model.addAttribute("paging", new pageDTO(cri, total));

		}return "Certificate/ClinicCertificateDetails_L";
	}
		//재증명 리스트 선택 시 환자 정보 증명서에 출력
		@GetMapping("ClinicCertificateDetails_Lr")
		public String ClinicCertificateDetails_Lr(MemberDTO md, Model model,HttpSession session,CriteriaDTO cri) {
		model.addAttribute("sert", cs.Cserch(md));
		
		md = (MemberDTO)session.getAttribute("login");
		//재증명의 진료 확인서 고유번호 (01)번 강제하기
		md.setHc("01");
		//진료 확인서의 문서번호
		String hc = md.getHc();
		//로그인 한 환자의 차트번호
		String rrn = md.getRrn();
		//조합하여 문서번호의 앞자리를 만듦
		String db = rrn + hc;
		cri.setDb(db+'%');
		cri.setRrn(rrn);
		md.setDb(cri.getDb());
		model.addAttribute("list", cs.Certificatelist(cri));
		int total = cs.Certificateserch(md);
		model.addAttribute("paging", new pageDTO(cri, total));
		return "Certificate/ClinicCertificateDetails_L";
		}
	
		@GetMapping("/post/{db}")
		public ResponseEntity <MemberDTO> Dbsearch(@PathVariable String db, HttpSession session) {
			MemberDTO mod = new MemberDTO();
			mod.setDb(db);
			session.setAttribute("md", cs.Cserch(mod));
			return new ResponseEntity<>(cs.Cserch(mod),HttpStatus.OK);

		}
		
		
		//비로그인 재증명 화면 출력
		
		//비로그인 입퇴원 확인서
		@GetMapping("HospitalizationCertificateDetailsNon_L")
		public String ClinicCertificateDetailsNon_L(MemberDTO md, Model model) {
			model.addAttribute("sert", cs.Cserch(md));
			return "Certificate/CertificateNonmember/HospitalizationCertificateDetailsNon_L";
		}
		
		//비로그인 수술 확인서
		@GetMapping("OperationCertificateDetailsNon_L")
		public String HospitalizationCertificateDetailsNon_L(MemberDTO md, Model model) {
			
			//발급일 당일로 조정
			Date day = new Date();
			SimpleDateFormat fDay = new SimpleDateFormat("yyyy년 MM월 dd일");
			String modi = fDay.format(day);
			md = cs.Cserch(md);
			md.setModi(modi);
			model.addAttribute("sert", md);
			
			return "Certificate/CertificateNonmember/OperationCertificateDetailsNon_L";
			
		}
		
		//비로그인 진료 확인서
		@GetMapping("ClinicCertificateDetailsNon_L")
		public String OperationCertificateDetailsNon_L(MemberDTO md, Model model) {
			model.addAttribute("sert", cs.Cserch(md));
			return "Certificate/CertificateNonmember/ClinicCertificateDetailsNon_L";
			
		}
		
		
}
