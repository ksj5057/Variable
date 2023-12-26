package com.vr.Mapper;

import java.util.ArrayList;

import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

public interface MemberMapper {
	//회원가입
	void join(MemberDTO member);
	//로그인
	public MemberDTO login(MemberDTO member);
	
		//차트 리스트
		public ArrayList<CriteriaDTO> list(CriteriaDTO cri);
		
		//차트 페이징
		public int total(CriteriaDTO cri);
		
		//차트 수정 페이지
		public void chartmodify(MemberDTO md);
		
		//차트 수정
		public MemberDTO modifyForm(MemberDTO md);
		
		//차트 삭제
		public void chartdelete(MemberDTO md);
		
		//차트 상세내역
		public MemberDTO chartdetail(MemberDTO md);

		//차트 ajax 환자 찾기
		public MemberDTO chartserch(MemberDTO md);
		
		//차트 작성
		public void chartwrite(MemberDTO md);
		
		//차트 문서번호 서치
		public int Match(String db);
		
		public int overlap(MemberDTO md);
		
		public int Verification(MemberDTO md);
	}

  