package com.vr.Service;

import java.util.ArrayList;

import com.vr.Model.ChartDTO;
import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

public interface ChartService {
	//chart 작성
	public void chartwrite(MemberDTO md);

	public ArrayList<ChartDTO> list(CriteriaDTO cri);

	public int total(CriteriaDTO cri);

	public void chartmodify(ChartDTO chart);
	
	public ChartDTO modifyForm(ChartDTO chart);
   
	public void chartdelete(ChartDTO chart);
	
	public ChartDTO chartdetail(ChartDTO chart);
	
}
 