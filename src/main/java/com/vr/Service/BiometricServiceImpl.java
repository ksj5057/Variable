package com.vr.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
	
	public BiometricDTO babydetail(BiometricDTO bd) {
		return bm.babydetail(bd);
	}
	
	public ArrayList<BiometricDTO> babylist(BiometricDTO bd){
		return bm.babylist(bd);
	}
	
	public int baby_room_in(BiometricDTO bd){
		return bm.baby_room_in(bd);
	}

}
