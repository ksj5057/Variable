package com.vr.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.MemberMapper;
import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	MemberMapper cm;
	
	//리스트
	public ArrayList<CriteriaDTO> list(CriteriaDTO cri){
		return cm.list(cri);
	}
	//게시물 갯수
	public int total(CriteriaDTO cri) {
		return cm.total(cri);
	}
	//차트 수정
	public void chartmodify(MemberDTO md) {
		cm.chartmodify(md);
	}
	//차트 수정
	public MemberDTO modifyForm(MemberDTO md) {
		return cm.modifyForm(md);
	}
	
	//차트 삭제
	public void chartdelete(MemberDTO md) {
		cm.chartdelete(md);
	}
	
	//차트 상세내역
	public MemberDTO chartdetail(MemberDTO md) {
		return cm.chartdetail(md);
	}
	
	//차트 ajax 환자 찾기
	public MemberDTO chartserch(MemberDTO md) {
		return cm.chartserch(md);
	}
	//차트 작성
	public void chartwrite(MemberDTO md) {
		cm.chartwrite(md);
	}
	//차트 문서번호 서치
	public int Match(String db) {
		return cm.Match(db);
	}
}
    