package com.vr.Controller;

import java.io.File;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.vr.Model.BiometricDTO;
import com.vr.Model.MemberDTO;
import com.vr.Model.fileVO;
import com.vr.Service.BiometricService;
import com.vr.Service.fileServiece;

@Controller
public class BiometricController {
	
	@Autowired
	BiometricService bs;
	
	@Autowired
	fileServiece fv;
	
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
	public String r302() {
		return "biometric/room/r302";
	}

	//소아과 302호실 페이지로 접속
	@GetMapping("r303")
	public String r303() {
		return "biometric/room/r303";
	}

	//소아과 아이들 상세보기 페이지로 이동
	@RequestMapping(value = "babydetail", method = RequestMethod.GET)
		public String babydetail(Model model, BiometricDTO bd) {
//		bs.babydetail(bd);
//		model.addAttribute("babydetail", bs.babydetail(bd));
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
		
		
		
		@PostMapping("/uplodeFile.do")
		public String uplodeFile(@ModelAttribute("vo") fileVO vo)throws Exception {
		   //@ModelAttribute는 VO를 객체화 시켜서 jsp로 넘겨줌 
	       //이때 괄호안에 text는 jsp에서 값을 부르는 별명이라고 생각하면 됨
	       //여기서는 VO를 객체로 만들어 줘야해서 @ModelAttribute 지정함
	        
			String fileName = null;
			MultipartFile file = vo.getUploadFile();//위에 fileVO객체를 통해 MultipartFile 기능을 쓸수 있게 내용을 담아줌
			if (!file.isEmpty()) { //file객체가 비어있지 않다면
	        
			String originalFileName = file.getOriginalFilename(); //파일의 실제 이름

			
			//String ext =FilenameUtils.getExtension(originalFileName); //파일의 확장자
			//UUID uuid = UUID.randomUUID(); //파일의 새로운 닉네임 같은거....
			fileName = originalFileName; //랜덤값+파일의 실제 이름+파일의 확장자 이렇게 붙여서 파일명을 새롭게 만들고 
	        							//DB에 담아주는게 좋으나 나는 간단하게 작성을 위하여 파일명만 지정
			
			file.transferTo(new File("C:\\upload\\"+fileName)); //new File 객체를 통해 file객체를 만들고
	        							//"c:\\upload\\"지정해준 경로에 파일새로만들기
			}
			
			vo.setFileName(fileName); //지정해준 파일명을 vo에 담아줌
			fv.saveFile(vo); // 담아준 vo를 비지니스로직에 태워보냄
			
			
			return ""; //특정 jsp페이지로 지정해도되나 나는 따로 지정을 안하여 controller가 실행한뒤 404에러페이지가 나온다
	    
		}
		
		

		@RequestMapping(value = "test", method = RequestMethod.GET)
		public String btest() {
			return "biometric/test";
			}
}
