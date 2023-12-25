package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.MemberMapper;
import com.vr.Model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mm;
	
	
	public void join(MemberDTO md) {
		mm.join(md);
	}
	
	public MemberDTO login(MemberDTO md){
		return mm.login(md);
	}
	
	public int overlap(MemberDTO md){
		return mm.overlap(md);
	}
	
	public int Verification(MemberDTO md) {
		return mm.Verification(md);
	}

}
    