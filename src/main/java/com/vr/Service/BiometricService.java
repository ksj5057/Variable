package com.vr.Service;

import java.util.ArrayList;

import com.vr.Model.BiometricDTO;
import com.vr.Model.TempleDTO;

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

	//호실에 몇 명인지 체크
	public int renewal_count();
	
	//호실 갱신
	public ArrayList<TempleDTO> renewal(int count);
	
	//호실 갱신 후 아기 개인 백업
	public void renewal_insert(TempleDTO td);
	
	//갱신 후 이름 값 가져오기
	public String renewal_name(BiometricDTO bd);
	

}
