package com.vr.Service;

import java.util.ArrayList;

import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

public interface CertificateService {
	
	public int serch(MemberDTO md);

	public MemberDTO Cserch(MemberDTO md);
	
	public int Certificateserch(MemberDTO md);
	
	public ArrayList<CriteriaDTO> Certificatelist(CriteriaDTO cri);
	

}
