package com.vr.Mapper;

import com.vr.Model.BiometricDTO;

public interface BiometricMapper {
	//아이 등록
	public void babyinsert(BiometricDTO bd);

	public void babydetail(BiometricDTO bd);
}
