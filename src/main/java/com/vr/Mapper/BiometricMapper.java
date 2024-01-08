package com.vr.Mapper;

import java.util.ArrayList;

import org.springframework.http.ResponseEntity;

import com.vr.Model.BiometricDTO;

public interface BiometricMapper {
	//아이 등록
	public void babyinsert(BiometricDTO bd);

	public BiometricDTO babydetail(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> babylist(BiometricDTO bd);
	
	public int baby_room_in(BiometricDTO bd);

	//아기 등록 전 셀렉트하여 값 가져오기
	public BiometricDTO baby_room_sel(BiometricDTO bd);
	
	//302호 list
	public ArrayList<BiometricDTO> bt302(BiometricDTO bd);

}