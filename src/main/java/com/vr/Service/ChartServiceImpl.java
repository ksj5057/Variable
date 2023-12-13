package com.vr.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.ChartMapper;
import com.vr.Model.ChartDTO;
import com.vr.Model.CriteriaDTO;

@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	ChartMapper cm;

	//chart 작성 메소드
	public void chartwrite(ChartDTO chart) {
		cm.chartwrite(chart);
	}
	
	public ArrayList<ChartDTO> list(CriteriaDTO cri){
		return cm.list(cri);
	}
	
	public int total(CriteriaDTO cri) {
		return cm.total(cri);
	}
	
	public void chartmodify(ChartDTO chart) {
		cm.chartmodify(chart);
	}
	public ChartDTO modifyForm(ChartDTO chart) {
		return cm.modifyForm(chart);
	}
	
	public void chartdelete(ChartDTO chart) {
		cm.chartdelete(chart);
	}

	@Override
	public ChartDTO chartdetail(ChartDTO chart) {
		// TODO Auto-generated method stub
		return cm.chartdetail(chart);
	}
}
    