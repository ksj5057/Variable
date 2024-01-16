package com.vr.Controller;

import java.util.ArrayList;

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
import com.vr.Service.TemperatureServiece;
import com.vr.Service.TempleService;

@Controller
public class BiometricController {

	//아기등록 서비스 객체
	@Autowired
	BiometricService bs;

	//온도, 날짜 서비스 객체
	@Autowired
	TempleService ts;

	//실내 온도
	@Autowired
	TemperatureServiece tis;

	//소아과병동 홈페이로 접속.
	@GetMapping("bmain")
	public String biometricMain(TempleDTO td, Model model,BiometricDTO bd, HttpSession session) {

		//실내 온도 값 가져오기
		model.addAttribute("indoor", tis.Indoortemperature());

		//경고 고온의 아이가 몇 명인지 체크.
		int Warningh = 0;
		//경고 저온의 아이가 몇 명인지 체크.
		int Warningl = 0;
		//이상 온도 체크
		int temp_count = 0;

		//301호실 입원 명 수 확인
		int count = bs.renewal_count();
		//명 수 만큼 값 가져오기
		ArrayList<TempleDTO> bt301 = bs.renewal(count);
		//온도 저장 변수
		double bt1_tem = 0;
		double bt2_tem = 0;
		double bt3_tem = 0;

		//bt301에 담은 아기정보 인덱스를 각 각의 DTO에 분산
		TempleDTO bt1 = null;
		TempleDTO bt2 = null;
		TempleDTO bt3 = null;

		// 301호 아기들 배열을 풀어서 TempleDTO 타입으로 하나씩 저장
		// ArrayList<TempleDTO> bt301 0번 인덱스 
		if(count == 1) {
			//301호의 아기가 1명이면 1명분의 인덱스 값을 가져와서 bt1에 저장
			bt1 = bt301.get(0);
			//bt의 온도값을 실수인 bt1_tem에 저장
			bt1_tem = Double.parseDouble (bt1.getTemp());
			//아이의 온도가 38보다 높고 36보다 낮으면 경고 대상.
			if(bt1_tem > 38 || bt1_tem < 36) {
				temp_count++;
				//차트번호 가지고 와서 dto에 값 저장
				BiometricDTO bd1 = new BiometricDTO();
				bd1.setBno(bt1.getBno());
				//bno 값으로 이름을 찾고 세션에 저장
				session.setAttribute("name1", bs.renewal_name(bd1));
				//차트번호 및 입원수로 온도값을 가져오고 그 값을 사용하여 경고창 실행
				bs.renewal_insert(bt1);
				if(bt1_tem > 38) {
					//아이의 온도가 높다면 경고 고온 1 증가
					Warningh++;
				}else if(bt1_tem < 36) {
					//아이의 온도가 낮다면 경고 저온 1 증가
					Warningl++;
				}
			}
			model.addAttribute("Warningl", Warningl);
			model.addAttribute("Warningh", Warningh);
			model.addAttribute("wif", bs.renewal_tems(temp_count));
		}else if(count == 2) {
			
			//301호의 아기가 2명이면
			bt1 = bt301.get(0);
			bt2 = bt301.get(1);
			bt1_tem = Double.parseDouble (bt1.getTemp());
			bt2_tem = Double.parseDouble (bt2.getTemp());

				//그 아기의 온도에 이상이 있는지 확인
				if(bt1_tem > 38 || bt1_tem < 36) {
					temp_count++;
					//차트번호 가지고 와서 dto에 값 저장
					BiometricDTO bd1 = new BiometricDTO();
					bd1.setBno(bt1.getBno());
					//bno 값으로 이름을 찾고 세션에 저장
					session.setAttribute("name1", bs.renewal_name(bd1));
					//
					bs.renewal_insert(bt1);
					
				}
				
				if(bt2_tem > 38 || bt2_tem < 36) {
					temp_count++;
					//차트번호 가지고 와서 dto에 값 저장
					BiometricDTO bd2 = new BiometricDTO();
					bd2.setBno(bt2.getBno());
					//bno 값으로 이름을 찾고 저장하기.
					session.setAttribute("name2", bs.renewal_name(bd2));
					//차트번호 및 입원수로 온도값을 가져오고 그 값을 사용하여 경고창 실행
					bs.renewal_insert(bt2);

				}
				
				if(bt1_tem > 38) {
					Warningh++; //1상승
				}else if(bt1_tem < 36) {
					Warningl++; // 1상승
				}if(bt2_tem > 38) {
					Warningh++;
				}else if(bt2_tem < 36) {
					Warningl++;
				}
				
				System.out.println(temp_count);
				System.out.println(bs.renewal_tems(temp_count));
				model.addAttribute("Warningl", Warningl);
				model.addAttribute("Warningh", Warningh);
				model.addAttribute("wif", bs.renewal_tems(temp_count));
			}
		
		else if(count == 3) {
				//301호의 아기가 3명이면
				bt1 = bt301.get(0);
				bt2 = bt301.get(1);
				bt3 = bt301.get(2);

				bt1_tem = Double.parseDouble (bt1.getTemp());
				bt2_tem = Double.parseDouble (bt2.getTemp());
				bt3_tem = Double.parseDouble (bt3.getTemp());

				if(bt1_tem > 38 || bt1_tem < 36) {
					temp_count++;
					//차트번호 가지고 와서 dto에 값 저장
					BiometricDTO bd1 = new BiometricDTO();
					bd1.setBno(bt1.getBno());
					//bno 값으로 이름을 찾고 세션에 저장
					session.setAttribute("name1", bs.renewal_name(bd1));
					//차트번호 및 입원수로 온도값을 가져오고 그 값을 사용하여 경고창 실행
					bs.renewal_insert(bt1);
				}

				if(bt2_tem > 38 || bt2_tem < 36) {
					temp_count++;
					//차트번호 가지고 와서 dto에 값 저장
					BiometricDTO bd2 = new BiometricDTO();
					bd2.setBno(bt2.getBno());
					//bno 값으로 이름을 찾고 저장하기.
					session.setAttribute("name2", bs.renewal_name(bd2));
					//차트번호 및 입원수로 온도값을 가져오고 그 값을 사용하여 경고창 실행
					bs.renewal_insert(bt2);

				}
				if(bt3_tem > 38 || bt3_tem < 36) {
					temp_count++;
					//차트번호 가지고 와서 dto에 값 저장
					BiometricDTO bd3 = new BiometricDTO();
					bd3.setBno(bt3.getBno());
					//bno 값으로 이름을 찾고 세션에 저장
					session.setAttribute("name3", bs.renewal_name(bd3));
					//차트번호 및 입원수로 온도값을 가져오고 그 값을 사용하여 경고창 실행
					bs.renewal_insert(bt3);

				}

				if(bt1_tem > 38) {
					Warningh++; //1상승
				}else if(bt1_tem < 36) {
					Warningl++; // 1상승
				}if(bt2_tem > 38) {
					Warningh++;
				}else if(bt2_tem < 36) {
					Warningl++;
				}if(bt3_tem > 38) {
					Warningh++;
				}else if(bt3_tem < 36) {
					Warningl++;
				}
				model.addAttribute("wif", bs.renewal_tems(temp_count));
				model.addAttribute("Warningl", Warningl);
				model.addAttribute("Warningh", Warningh);
			}
			//값을 ti_301 db에 저장 및 갱신
			//각 호실의 온도 이상 확인해서 값 가져오기
			return "biometric/bmain";
		}
	//소아과 301호실 페이지로 접속
	@GetMapping("r301")
	public String r301(BiometricDTO bd, Model model,TempleDTO td) {
		//bt302db에 등록되어있는 아기 리스트 가져오기.
		td.setBno(1);
		ts.bt301_1(td);
		model.addAttribute("bt301_1", ts.bt301_1(td));
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
		return "biometric/close";
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
		else if(bt.equals("bt301")){
			// 그외에는 db에 값을 입력.

			//bt에 있는 아기 정보 모두 가져오고 vv에 저장
			BiometricDTO vv = bs.baby_room_sel(bd);

			return new ResponseEntity<>(bs.baby_room1_in(vv),HttpStatus.OK);
		}else if(bt.equals("bt302")){
			// 그외에는 db에 값을 입력.

			//bt에 있는 아기 정보 모두 가져오고 vv에 저장
			BiometricDTO vv = bs.baby_room_sel(bd);

			return new ResponseEntity<>(bs.baby_room2_in(vv),HttpStatus.OK);
		}else if(bt.equals("bt303")){
			// 그외에는 db에 값을 입력.

			//bt에 있는 아기 정보 모두 가져오고 vv에 저장
			BiometricDTO vv = bs.baby_room_sel(bd);

			return new ResponseEntity<>(bs.baby_room3_in(vv),HttpStatus.OK);

		}
		//작동 안함
		return new ResponseEntity<>(bs.baby_room3_in(bd),HttpStatus.OK);
	}

	@GetMapping("/post/chart/time")
	public ResponseEntity<?> tem(HttpSession session, TempleDTO td){
		return new ResponseEntity<>(ts.temp_s(td),HttpStatus.OK);
	}

	//호실 퇴원 함수 ajax
	@GetMapping("/post/baby/del1/db/{bbno}")
	public ResponseEntity<?> del1(@PathVariable int bbno,  HttpSession session, BiometricDTO bd){
		//bno값을 저장
		bd.setBno(bbno);
		//저장된 bno오 값으로 db에서 삭제 후 리턴 리턴값은 = int ( 1 or 0 );
		session.invalidate();
		return new ResponseEntity<>(bs.baby_room_del1(bd),HttpStatus.OK);
	}

	//경고창
	@GetMapping("Warning")
	public String Woring(Model model, HttpSession session) {
		model.addAttribute("bt301_1", session.getAttribute("name1"));
		model.addAttribute("bt301_2", session.getAttribute("name2"));
		model.addAttribute("bt301_3", session.getAttribute("name3"));
		return "biometric/Warning";
	}

}
