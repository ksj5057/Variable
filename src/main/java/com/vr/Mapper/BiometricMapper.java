package com.vr.Mapper;

import java.util.ArrayList;

import com.vr.Model.BiometricDTO;
import com.vr.Model.TempleDTO;

public interface BiometricMapper {
	//아이 등록
	public void babyinsert(BiometricDTO bd);

	public BiometricDTO babydetail(BiometricDTO bd);
	
	//호실 화면
	public ArrayList<BiometricDTO> babylist1(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> babylist2(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> babylist3(BiometricDTO bd);
	
	public int baby_room1_in(BiometricDTO bd);
	
	public int baby_room2_in(BiometricDTO bd);
	
	public int baby_room3_in(BiometricDTO bd);

	//아기 등록 전 셀렉트하여 값 가져오기
	public BiometricDTO baby_room_sel(BiometricDTO bd);
	
	//아기 등록 창
	public ArrayList<BiometricDTO> bt301(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> bt302(BiometricDTO bd);
	
	public ArrayList<BiometricDTO> bt303(BiometricDTO bd);
	
	public int baby_room_del1(BiometricDTO bd);
	
	public int baby_room_del2(BiometricDTO bd);
	
	public int baby_room_del3(BiometricDTO bd);

	//중복 검사
	public int baby_room_Overlapping(BiometricDTO bd);
	
	//각 호실 갱신
	public ArrayList<TempleDTO> renewal(int count);
	
	//갱신 값을 백업
	public void renewal_insert(TempleDTO td);
	
	public String renewal_name(BiometricDTO bd);
	
	public int renewal_count();
}