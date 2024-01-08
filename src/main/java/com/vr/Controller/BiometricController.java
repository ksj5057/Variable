package com.vr.Controller;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.vr.Model.BiometricDTO;
import com.vr.Model.TempleDTO;
import com.vr.Model.fileVO;
import com.vr.Service.BiometricService;
import com.vr.Service.TempleService;
import com.vr.Service.fileServiece;

@Controller
public class BiometricController {
	
	//아기등록 서비스 객체
	@Autowired
	BiometricService bs;
	
	//온도, 날짜 서비스 객체
	@Autowired
	TempleService ts;
	
	//월일 표시
	String md = "MM월 dd일";
	SimpleDateFormat monthd = new SimpleDateFormat(md);
	java.util.Date dd = new java.util.Date();
	String Motnhday = monthd.format(dd);
	
	//시간 계산
	String hm = "HH시 mm분";
	SimpleDateFormat hourm = new SimpleDateFormat(hm);
	java.util.Date ff = new java.util.Date();
	String Hourmin = hourm.format(ff);
	
	//소아과병동 홈페이로 접속.
	@GetMapping("bmain")
	public String biometricMain() {
		return "biometric/bmain";
	}

	//소아과 301호실 페이지로 접속
	@GetMapping("r301")
	public String r301() {
		return "biometric/room/r301";
	}

	//소아과 302호실 페이지로 접속
	@GetMapping("r302")
	public String r302(BiometricDTO bd, Model model) {
		//bt db에 등록되어있는 아기 리스트 가져오기.
		model.addAttribute("list", bs.babylist(bd));
		
		//bt 302 db의 아기 리스트 가져오기(3명 제한)
		model.addAttribute("bt302", bs.bt302(bd));
		
		return "biometric/room/r302";
	}

	//소아과 303호실 페이지로 접속
	@GetMapping("r303")
	public String r303(BiometricDTO bd, Model model) {
		
		return "biometric/room/r303";
	}

	//소아과 아이들 상세보기 페이지로 이동
	@RequestMapping(value = "babydetail", method = RequestMethod.GET)
		public String babydetail(Model model, BiometricDTO bd) {
		bs.babydetail(bd);
		model.addAttribute("babydetail", bs.babydetail(bd));
		return "biometric/room/detail/babydetail";
		
	}
	
	//아이 등록
	//회원가입 화면에서 회원가입 버튼 클릭시 메소드 실행
	@RequestMapping(value = "babyinsert", method = RequestMethod.GET)
	public String babyinsert(BiometricDTO bd) {
		bs.babyinsert(bd);
		return "biometric/bmain";
		}
	
	//회원가입 화면에서 회원가입 버튼 클릭시 메소드 실행
	
	//소아과병동 홈페이로 접속.
		@GetMapping("babyinsertform")
		public String babyinsertform() {
			return "biometric/babyinsertform";
		}
		
		//호실 퇴원 입원.
				@GetMapping("/get/baby/cat/{bname}/{bno}")
				public ResponseEntity<Integer> baby(@PathVariable String bname, @PathVariable int bno,  HttpSession session){
					BiometricDTO bd = new BiometricDTO();
					// bd에 이름을 저장
					bd.setBname(bname);
					// bd에 차트번호를 저장
					bd.setBno(bno);
					//아기 정보값을 검색하여 나온 값을 vv에 저장
					BiometricDTO vv = bs.baby_room_sel(bd);
					//vv의 값으로 bt302 db에 저장하고 리턴받기.
					return new ResponseEntity<>(bs.baby_room_in(vv),HttpStatus.OK);
				}
		
					@GetMapping("/post/chart/time")
		public ResponseEntity<?> tem(HttpSession session, TempleDTO td){
			System.out.println("연결 중.....");
			return new ResponseEntity<>(ts.temp_s(td),HttpStatus.OK);
		}
		


}
