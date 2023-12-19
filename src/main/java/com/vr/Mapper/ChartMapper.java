package com.vr.Mapper;

import java.util.ArrayList;

import com.vr.Model.ChartDTO;
import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

public interface ChartMapper {
	//chart 작성
	public void chartwrite(MemberDTO md);
	//chart 리스트
	public ArrayList<ChartDTO> list(CriteriaDTO cri);
	//chart 페이징
	public int total(CriteriaDTO cri);
	//chart 수정 페이지
	public void chartmodify(ChartDTO chart);
	//chart 수정
	public ChartDTO modifyForm(ChartDTO chart);
	//chart 삭제
	public void chartdelete(ChartDTO chart);
	
	public ChartDTO chartdetail(ChartDTO chart);
}
    