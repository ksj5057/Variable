package com.vr.Controller;


import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		int a = member.getAge();
		// 현재 년도 가져오기
		int b = Integer.parseInt(nowString);
		//  현재년도 - age값  나이구하기
		int c =(int) ((int)Math.floor(b-a)*0.0001);
		//나이값 저장
		member.setAge(c);
		ms.join(member);
		return "Member/Login_L";
	}
	
	// 로그인 화면 jsp
	@RequestMapping(value="Login_L", method = {RequestMethod.GET, RequestMethod.POST})
	public String Loginr() {
		return "Member/Login_L";
	}	
	
	// 회원가입 화면 js p
	@GetMapping("MemberShip_L")
	public String MemberShip_L() {
		return "Member/MemberShip_L";
	}

	@PostMapping("login")
	public String login(MemberDTO member, HttpSession session, Model model) {
		//ms.login값이 null이 아니면
		if(ms.login(member) != null) {
		//로그인해라
		session.setAttribute("login", ms.login(member));
		//그리고 로그인 화면으로 이동
		return "main";
		//그렇지않으면
		}else {
		//로그인 하지마라
		//로그인 화면으로 이동.
		return "Member/Login_L";
		}
	}
	
	// 로그아웃누르면 메인으로
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "main";
	}
	
	// 관리자전용 클릭시 차트리스트 실행	
	@GetMapping("chartlist")
	public String chartlist(MemberDTO member) {
		return "chart/chartlist";
	}	
	
}    