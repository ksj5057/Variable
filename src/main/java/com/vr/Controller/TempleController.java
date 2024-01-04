package com.vr.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vr.Model.TempleDAO;
import com.vr.Model.TempleDTO;

public class TempleController {

	@RequestMapping(value = "/basic/m3.action", method = { RequestMethod.GET })
	@ResponseBody 
	public TempleDTO m3(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String seq, TempleDTO td) {

		TempleDTO dto = td.getTemp(seq);
	    return dto; 
	}
	
}
