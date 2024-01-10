package com.vr.Service;

import java.util.ArrayList;

import org.springframework.http.ResponseEntity;

import com.vr.Model.BiometricDTO;

public interface BiometricService {
	// 아이 등록
	public void babyinsert(BiometricDTO bd);

	//301~303 db의  상세내역
	public BiometricDTO babydetail(BiometricDTO bd);
	
	//301~303 db의  리스트
	public ArrayList<BiometricDTO> babylist1(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> babylist2(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> babylist3(BiometricDTO bd);
	
	//입원
	public int baby_room1_in(BiometricDTO bd);
	
	public int baby_room2_in(BiometricDTO bd);
	
	public int baby_room3_in(BiometricDTO bd);
	
	//아기 입원 테이블 리스트 중에 값 확인
	public BiometricDTO baby_room_sel(BiometricDTO bd);
	
	//아기 등록창
	public ArrayList<BiometricDTO> bt301(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> bt302(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> bt303(BiometricDTO bd);
	
	//퇴원
	public int baby_room_del1(BiometricDTO bd);
	
	public int baby_room_del2(BiometricDTO bd);
	
	public int baby_room_del3(BiometricDTO bd);
	
	//중복 검사
	public int baby_room_Overlapping(BiometricDTO bd);

	

}
