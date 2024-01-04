package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.TempleMapper;
import com.vr.Model.TempleDTO;

@Service
public class TempleServiceImp implements TempleService {

	@Autowired
	TempleMapper tm;	
	
	public void temp_select(TempleDTO tmpdto) {
		tm.temp_select(tmpdto);
		
	}
}
