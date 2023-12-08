package com.vr.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vr.Mapper.MemberMapper;
import com.vr.Model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mm;
	
	
	public void join(MemberDTO member) {
		mm.join(member);
		
	}
	
	public MemberDTO login(MemberDTO member){
		return mm.login(member);
		
		
	}

}
    