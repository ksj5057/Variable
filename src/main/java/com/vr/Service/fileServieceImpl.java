package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.fileMapper;
import com.vr.Model.fileVO;
@Service
public class fileServieceImpl implements fileServiece {
	
	@Autowired
	private fileMapper fm;
	
	
	public void saveFile(fileVO vo) {
		fm.saveFile(vo);
		
	};
}
