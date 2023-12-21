package com.vr.Mapper;

import java.util.ArrayList;

import com.vr.Model.CertificateListDTO;
import com.vr.Model.ChartDTO;
import com.vr.Model.CriteriaDTO;
import com.vr.Model.MemberDTO;

public interface CertificateListMapper {
	
	public int serch(MemberDTO md);
	
	public MemberDTO Cserch(MemberDTO md);
	
	public int Certificateserch(MemberDTO md);
	
	public ArrayList<CriteriaDTO> Certificatelist(CriteriaDTO cri);
}
