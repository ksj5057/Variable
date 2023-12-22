package com.vr.Controller;


import com.vr.Model.*;
import com.vr.Service.ChartService;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


/**
 * Handles requests for the application home page.
 */
@Controller
public class ChartController {

	@Autowired
	ChartService cs;

	//현재 년도 가져오기
	String pattern = "yyyyMMddHHmmss";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	java.util.Date now = new java.util.Date();
	String nowString = sdf.format(now);

	//차트 리스트 불러오기
	@RequestMapping(value = "chart/chartlist", method = RequestMethod.GET)
	public String list(Model model, CriteriaDTO cri, HttpSession session,HttpServletResponse response, MemberDTO md){
			//의사 로그인 값 가져오기
			model.addAttribute("doc", session.getAttribute("login"));
			//리스트 불러오기
			model.addAttribute("list", cs.list(cri));
			//게시물의 총 갯수
			int total = cs.total(cri);
			model.addAttribute("paging", new pageDTO(cri, total));
			
			//로그인 시 DB와 비교하여 가져온 세션 정보값을 가져와서 MemberDTO 타입의 login변수에 저장


			//로그인을 하지않고 재증명 이용 시 "로그인 후 이용부탁드립니다' 멘트 후 로그인창으로 이동
			if(md.getPosition() != "Manager") {

				try {
						response.setContentType("text/html; charset=utf-8");
						PrintWriter w = response.getWriter();
						w.write("<script>alert('관리자 아이디로 로그인 해주세요'); location.href='Login_L';</script>");
						w.flush();
						w.close();
				    } catch(Exception e) {
						e.printStackTrace();
				    }
				    	return "로그인 창 이동";
				 //로그인 하였으나 진료기록이 없다면 진료기록이 없다고 멘트 후 재증명 창으로 이동
				}return "chart/chartlist";
		}
	//차트 작성 폼 불러오기
	@RequestMapping(value = "chart/chartwriteForm", method = RequestMethod.GET)
	public String mdwriteForm(HttpSession session, Model model) {
		model.addAttribute("chart", session.getAttribute("login"));
		return "chart/chartwriteForm";
	}



	//차트 작성
	@RequestMapping(value = "chart/chartwrite", method = RequestMethod.POST)
	public String mdwrite(MemberDTO md,HttpSession session) {
		MemberDTO mm = new MemberDTO();
		//환자 찾기해서 찾은 정보값 세션에 저장한거 가져오기
		mm = (MemberDTO) session.getAttribute("md");

		int i = 1;
		String rrn =mm.getRrn();
		String hc = md.getHc();
		Boolean start = true;
		while(start) {
			String db = rrn + hc + '-' + i;
			md.setDb(db);
			//값이 없다
			if(cs.Match(db) == 0) {
				start = false;


				//값이 있다.
			}else if(cs.Match(db) == 1 ){
				i++;
			}

		}
		// 문서번호 생성

		MemberDTO doc = new MemberDTO();
		doc = (MemberDTO) session.getAttribute("login");
		//의사이름 저장
		md.setDocname(doc.getMname());
		//의사면허번호 저장
		md.setDl(doc.getDl());
		//차트번호 저장
		md.setRrn(mm.getRrn());
		//성별 저장
		md.setGender(mm.getGender());
		//생년월일 저장
		md.setBirth(mm.getBirth());
		//나이 저장
		md.setAge(mm.getAge());
		System.out.println("login 전 " + md);
		cs.chartwrite(md);

		return "redirect:/chart/chartlist";
	}

	//	차트 수정 폼 불러오기
	@RequestMapping(value = "chart/chartmodifyForm", method = RequestMethod.GET)
	public String mdmodifyForm(MemberDTO md, Model model) {
		model.addAttribute("modifyform", cs.modifyForm(md));
		cs.modifyForm(md);
		return "chart/chartmodifyForm";
	}

	//	차트 수정 버튼
	@RequestMapping(value = "chart/chartmodify", method = RequestMethod.POST)
	public String mdmodify(MemberDTO md, RedirectAttributes rttr) {
		if(md.getHospital() == "") {
			md.setHospital(null);
		}
		if(md.getExitd() == "") {
			md.setExitd(null);
		}
		System.out.println("modi 전  "+ md);
		md.setModi(nowString);
		cs.chartmodify(md);
		System.out.println("modi" + md);
		rttr.addAttribute("rrn", md.getRrn());
		return "redirect:/chart/chartlist";
	}


	// 차트 삭제 버튼
	@RequestMapping(value = "chart/chartdelete", method = RequestMethod.GET)
	public String mddelete(MemberDTO md) {
		cs.chartdelete(md);
		return "redirect:/chart/chartlist";
	}

	// 차트 상세내역
	@RequestMapping(value = "chart/chartdetail", method = RequestMethod.GET)
	public String mddetail(MemberDTO md, Model model) {
		System.out.println(md);
		cs.chartdetail(md);
		model.addAttribute("chartdetail", cs.chartdetail(md));
		return "chart/chartdetail";
	}

	@RequestMapping(value = "chart/Login_L", method = RequestMethod.GET)
	public String mdlogin() {
		return "redirect:/Login_L";
	}

	@RequestMapping(value = "chart/logout", method = RequestMethod.GET)
	public String logout() {
		return "redirect:/logout";
	}

	@RequestMapping(value = "chart/MemberShip_L", method = RequestMethod.GET)
	public String mdMembership() {
		return "redirect:/MemberShip_L";
	}

	@RequestMapping(value = "chart/Certificate_L", method = RequestMethod.GET)
	public String Certificate_L() {
		return "redirect:/Certificate_L";
	}

	//ajax 환자 찾기
	@GetMapping("/post/{name}")
	public ResponseEntity <MemberDTO> replywrite(@PathVariable String name, HttpSession session) {
		MemberDTO md = new MemberDTO();
		md.setMname(name);
		session.setAttribute("md", cs.chartserch(md));
		return new ResponseEntity<>(cs.chartserch(md),HttpStatus.OK);
	}
	
	// 관리자 외 차트리스트 접근제한
	//재증명 발급 화면으로 이동
//	@GetMapping("Certificate_L")
//	public String Certificate(MemberDTO md,HttpSession session,HttpServletResponse response) {


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
//			return "Certificate/Certificate_L";
//		}
} 

