package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.BiometricMapper;
import com.vr.Model.BiometricDTO;

@Service
public class BiometricServiceImpl implements BiometricService {

	@Autowired
	BiometricMapper bm;
	
	public void babyjoin(BiometricDTO bio) {
		bm.babyjoin(bio);
	}
}
