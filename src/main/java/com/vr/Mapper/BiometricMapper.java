package com.vr.Mapper;

import java.util.ArrayList;

import org.springframework.http.ResponseEntity;

import com.vr.Model.BiometricDTO;

public interface BiometricMapper {
	//아이 등록
	public void babyinsert(BiometricDTO bd);

	public void babydetail(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> babylist(BiometricDTO bd);
	
	public int baby_room_in(BiometricDTO bd);



}