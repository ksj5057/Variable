package com.vr.Controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vr.Model.BiometricDTO;
import com.vr.Model.TempleDTO;
import com.vr.Service.BiometricService;
import com.vr.Service.TempleService;

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

	//소아과 302호실 페이지로 접속
	@GetMapping("r301")
	public String r301(BiometricDTO bd, Model model) {
		//bt302db에 등록되어있는 아기 리스트 가져오기.
		BiometricDTO list = new BiometricDTO();
		model.addAttribute("list", bs.babylist1(list));
		
		//bt 302 db 등록되어 있지 않은 아기 리스트 가져오기
		model.addAttribute("bt301", bs.bt301(bd));
		
		return "biometric/room/r301";
	}

	//소아과 302호실 페이지로 접속
	@GetMapping("r302")
	public String r302(BiometricDTO bd, Model model) {
		//bt302db에 등록되어있는 아기 리스트 가져오기.
		BiometricDTO list = new BiometricDTO();
		model.addAttribute("list", bs.babylist2(list));
		
		//bt 302 db 등록되어 있지 않은 아기 리스트 가져오기
		model.addAttribute("bt302", bs.bt302(bd));
		
		return "biometric/room/r302";
	}

	//소아과 303호실 페이지로 접속
	@GetMapping("r303")
	public String r303(BiometricDTO bd, Model model) {
		//bt302db에 등록되어있는 아기 리스트 가져오기.
		BiometricDTO list = new BiometricDTO();
		model.addAttribute("list", bs.babylist3(list));
		
		//bt 302 db 등록되어 있지 않은 아기 리스트 가져오기
		model.addAttribute("bt303", bs.bt303(bd));
		
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
		
		//호실 입원.
				@GetMapping("/get/baby/cat/{bname}/{bno}/{bt}")
				public ResponseEntity<Integer> baby(@PathVariable String bname, @PathVariable int bno, @PathVariable String bt,  HttpSession session, HttpServletResponse response){
					BiometricDTO bd = new BiometricDTO();
					// bd에 이름을 저장
					bd.setBname(bname);
					// bd에 차트번호를 저장
					bd.setBno(bno);
					
					//중복 확인, 아이디가 있다면 1을 반환.
					int count = bs.baby_room_Overlapping(bd);
					
					//아기 정보값을 검색하여 나온 값을 vv에 저장
						if(count == 1) {
							//중복이면 0을 반환하면 js에서 등록실패 문구 출력
							return new ResponseEntity<>(0,HttpStatus.OK);
						}
							else if(bt == "bt301"){
						// 그외에는 db에 값을 입력.
							
							//bt에 있는 아기 정보 모두 가져오고 vv에 저장
							BiometricDTO vv = bs.baby_room_sel(bd);
						
							return new ResponseEntity<>(bs.baby_room_in1(vv),HttpStatus.OK);
						}else if(bt == "bt302"){
						// 그외에는 db에 값을 입력.
							
							//bt에 있는 아기 정보 모두 가져오고 vv에 저장
							BiometricDTO vv = bs.baby_room_sel(bd);
						
							return new ResponseEntity<>(bs.baby_room_in2(vv),HttpStatus.OK);
						}else if(bt == "bt303"){
						// 그외에는 db에 값을 입력.
							
							//bt에 있는 아기 정보 모두 가져오고 vv에 저장
							BiometricDTO vv = bs.baby_room_sel(bd);
						
							return new ResponseEntity<>(bs.baby_room_in3(vv),HttpStatus.OK);
						
						}
						//작동 안함
						return new ResponseEntity<>(bs.baby_room_in3(bd),HttpStatus.OK);
				}
		
		@GetMapping("/post/chart/time")
		public ResponseEntity<?> tem(HttpSession session, TempleDTO td){
			System.out.println("연결 중.....");
			return new ResponseEntity<>(ts.temp_s(td),HttpStatus.OK);
		}
					
		//호실 퇴원 함수 ajax
		@GetMapping("/post/baby/del/db/{bbno}")
		public ResponseEntity<?> del(@PathVariable int bbno,  HttpSession session, BiometricDTO bd){
			//bno값을 저장
			bd.setBno(bbno);
			//저장된 bno오 값으로 db에서 삭제 후 리턴 리턴값은 = int ( 1 or 0 );
			return new ResponseEntity<>(bs.baby_room_del(bd),HttpStatus.OK);
		}
		


}
