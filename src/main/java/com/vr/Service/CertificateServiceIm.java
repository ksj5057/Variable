package com.vr.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.CertificateListMapper;
import com.vr.Model.CertificateListDTO;
import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

@Service
public class CertificateServiceIm implements CertificateService {

	@Autowired
	CertificateListMapper cm;
	
	public int serch(MemberDTO md) {
		return cm.serch(md);
	}
	
	public MemberDTO Cserch(MemberDTO md) {
		return cm.Cserch(md);
	}
	
	//환자에 대한 진료 건 수 찾기
	public int Certificateserch(MemberDTO md) {
		return cm.Certificateserch(md);
	}
	
	public ArrayList<CriteriaDTO> Certificatelist(CriteriaDTO cri){
		return cm.Certificatelist(cri);
	}
}
