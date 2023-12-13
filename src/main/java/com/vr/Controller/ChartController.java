package com.vr.Controller;


import com.vr.Model.*;
import com.vr.Service.ChartService;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


/**
 * Handles requests for the application home page.
 */
@Controller
public class ChartController {
	
	@Autowired
	ChartService cs;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//차트 리스트 불러오기
	@RequestMapping(value = "chart/chartlist", method = RequestMethod.GET)
	public String list(Model model, CriteriaDTO cri) {
		System.out.println(cri);
		model.addAttribute("list", cs.list(cri));
		int total = cs.total(cri);
		model.addAttribute("paging", new pageDTO(cri, total));
		return "chart/chartlist";
	}
	
	//차트 작성 폼 불러오기
	@RequestMapping(value = "chart/chartwriteForm", method = RequestMethod.GET)
	public void chartwriteForm() {
	}
	
	//차트 작성
	@RequestMapping(value = "chart/chartwrite", method = RequestMethod.POST)
	public String chartwrite(ChartDTO chart) {
		System.out.println(chart);
		cs.chartwrite(chart);
		return "redirect:/chart/chartlist";
	}
	
	//	차트 수정 폼 불러오기
	@RequestMapping(value = "chart/chartmodifyForm", method = RequestMethod.GET)
	public String chartmodifyForm(ChartDTO chart, Model model) {
		System.out.println(chart);
		model.addAttribute("modifyForm", cs.modifyForm(chart));
		cs.modifyForm(chart);
		return "chart/chartmodifyForm";
	}
	
	//	차트 수정 버튼
	@RequestMapping(value = "chart/chartmodify", method = RequestMethod.POST)
	public String chartmodify(ChartDTO chart, RedirectAttributes rttr) {
		System.out.println(chart);
		cs.chartmodify(chart);
		rttr.addAttribute("cno", chart.getCno());
		return "redirect:/chart/chartlist";
	}
	
	// 차트 삭제 버튼
	@RequestMapping(value = "chart/chartdelete", method = RequestMethod.GET)
	public String chartdelete(ChartDTO chart) {
		cs.chartdelete(chart);
		return "redirect:/chart/chartlist";
	}
	
	@RequestMapping(value = "chart/chartdetail", method = RequestMethod.GET)
	public void chartdetail(ChartDTO chart) {
		cs.chartdetail(chart);
	}
} 
	   
