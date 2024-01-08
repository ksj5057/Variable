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
	
	public BiometricDTO baby_room_sel(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> bt302(BiometricDTO bd);
	
	public int baby_room_del(BiometricDTO bd);
	
	//중복 검사
	public int baby_room_Overlapping(BiometricDTO bd);

}
