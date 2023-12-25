package com.vr.Controller;


import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.servlet.support.RequestContextUtils;

import com.vr.Model.MemberDTO;
import com.vr.Service.MemberService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	//현재 년도 가져오기
	String pattern = "yyyyMMdd";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	java.util.Date now = new java.util.Date();
	String nowString = sdf.format(now);
	
	//객체 생성
	@Autowired
	MemberService ms;
	private HttpServletRequest request;
	
	//메인화면 이동
	@RequestMapping(value = "/", method = RequestMethod.GET)
		public String main() {
			return "main";
		}
	
	@RequestMapping(value = "member", method = RequestMethod.GET)
	public void abcdefg(Model model) {
		model.addAttribute("memberid", "hong1234");
	}
	
	//회원가입 화면에서 회원가입 버튼 클릭시 메소드 실행
	@RequestMapping(value = "member", method = RequestMethod.POST)
	
	public String qwerty(MemberDTO member) {
		//age의 값 가져오기
		int age = member.getAge();
		// 현재 년도 가져오기
		int now = Integer.parseInt(nowString);
		//  현재년도 - age값  나이구하기
		int krage =(int) ((int)Math.floor(now-age)*0.0001);
		//나이값 저장
		member.setAge(krage);
		ms.join(member);
		return "Member/Login_L";
	}
	
	// 로그인 화면 jsp
	@RequestMapping(value="Login_L", method = {RequestMethod.GET, RequestMethod.POST})
	public String Login_L(HttpServletRequest request, Model model, HttpSession session) {
		String uri = request.getHeader("Referer");
		String uname = uri.substring(uri.lastIndexOf('/'), uri.length());

		System.out.println("url1 = " + uri);
		System.out.println("uri = " + uname);
		session.setAttribute("prevPage", uname);
		    return "Member/Login_L";
	}
	
	// 회원가입 화면 jsp
	@GetMapping("MemberShip_L")
	public String MemberShip_L() {
		return "Member/MemberShip_L";
	}

	@PostMapping("login")
	public String login(MemberDTO member, HttpSession session, Model model, HttpServletRequest request) {
		//ms.login값이 null이 아니면
		if(ms.login(member) != null) {
			//로그인성공하면 login폼 이전 url 들고와
			String lastu = (String)session.getAttribute("prevPage");
			session.setAttribute("login", ms.login(member));
			System.out.println("after" + member);
			System.out.println("Lastu = " + lastu);
			if(lastu.equals("/")) {
				System.out.println("aaaaa");
				return "main";
			}else if(lastu.contains("Certificate")) {
				System.out.println("bbbbb");
				return "Certificate" + lastu;
			}else if(lastu.contains("chart")) {
				System.out.println("ccccc");
				return "redirect:/chart" + lastu;
			}
		}
		System.out.println("ddddd");
		return "Member/Login_L";
	}
	
	
	
	// 로그아웃누르면 메인으로
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 관리자전용 클릭시 차트리스트 실행	
	@GetMapping("chartlist")
	public String chartlist(MemberDTO member) {
		return "chart/chartlist";
	}	
	
	//관리자 로그인
	@GetMapping("AdminLogin_L")
	public String AdminLogin() {
		return "Member/AdminLogin_L";
	}	
	
	@GetMapping("/get/overlap/{id}")
	public ResponseEntity <Integer> overlap(@PathVariable String id, HttpSession session){
		       MemberDTO md = new MemberDTO();
				md.setId(id);
				return new ResponseEntity<>(ms.overlap(md),HttpStatus.OK);
			}
}    