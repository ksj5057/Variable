package com.vr.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.vr.Model.fileVO;

public interface fileMapper {
		
		public void saveFile(fileVO vo);
	    
	}
