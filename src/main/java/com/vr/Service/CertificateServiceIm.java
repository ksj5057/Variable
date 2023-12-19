package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.CertificateListMapper;
import com.vr.Model.CertificateListDTO;
import com.vr.Model.MemberDTO;

@Service
public class CertificateServiceIm implements CertificateService {

	@Autowired
	CertificateListMapper cm;
	
	public int serch(MemberDTO md) {
		return cm.serch(md);
	};
	
	public MemberDTO Cserch(MemberDTO md) {
		return cm.Cserch(md);
	}
}
