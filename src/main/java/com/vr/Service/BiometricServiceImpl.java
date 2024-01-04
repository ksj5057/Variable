package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.BiometricMapper;
import com.vr.Model.BiometricDTO;

@Service
public class BiometricServiceImpl implements BiometricService {

	@Autowired
	BiometricMapper bm;
	
	//아이 등록
	public void babyinsert(BiometricDTO bd) {
		bm.babyinsert(bd);
	}

}
