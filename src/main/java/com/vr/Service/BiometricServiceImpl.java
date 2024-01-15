package com.vr.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.BiometricMapper;
import com.vr.Model.BiometricDTO;
import com.vr.Model.TempleDTO;

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

	public ArrayList<BiometricDTO> babylist1(BiometricDTO bd){
		return bm.babylist1(bd);
	}
	
	public ArrayList<BiometricDTO> babylist2(BiometricDTO bd){
		return bm.babylist2(bd);
	}
	
	public ArrayList<BiometricDTO> babylist3(BiometricDTO bd){
		return bm.babylist3(bd);
	}

	public int baby_room1_in(BiometricDTO bd){
		return bm.baby_room1_in(bd);
	}
	
	public int baby_room2_in(BiometricDTO bd){
		return bm.baby_room2_in(bd);
	}
	
	public int baby_room3_in(BiometricDTO bd){
		return bm.baby_room3_in(bd);
	}

	//아기 등록 전 셀렉트하여 값 가져오기
	public BiometricDTO baby_room_sel(BiometricDTO bd) {
		return bm.baby_room_sel(bd);
	}
	
	//아기 등록창
	public ArrayList<BiometricDTO> bt301(BiometricDTO bd) {
		// TODO Auto-generated method stub
		return bm.bt301(bd);
	}

	public ArrayList<BiometricDTO> bt302(BiometricDTO bd){
		return bm.bt302(bd);
	}		
	
	public ArrayList<BiometricDTO> bt303(BiometricDTO bd) {
		// TODO Auto-generated method stub
		return bm.bt303(bd);
	}
	
	public int baby_room_del1(BiometricDTO bd) {
		return bm.baby_room_del1(bd);
	}
	
	public int baby_room_del2(BiometricDTO bd) {
		return bm.baby_room_del2(bd);
	}
	
	public int baby_room_del3(BiometricDTO bd) {
		return bm.baby_room_del3(bd);
	}

	public int baby_room_Overlapping(BiometricDTO bd) {
		return bm.baby_room_Overlapping(bd);
	}
	
	public TempleDTO renewal() {
			return bm.renewal();
	}
	public void renewal_insert(TempleDTO td) {
		  bm.renewal_insert(td);
	}
	
}
