package com.vr.Service;

import java.util.ArrayList;

import org.springframework.http.ResponseEntity;

import com.vr.Model.BiometricDTO;

public interface BiometricService {
	// 아이 등록
	public void babyinsert(BiometricDTO bd);

	public BiometricDTO babydetail(BiometricDTO bd);

	public ArrayList<BiometricDTO> babylist(BiometricDTO bd);
	
	public int baby_room_in(BiometricDTO bd);
	
	

}
