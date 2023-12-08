package com.vr.Service;

import com.vr.Model.MemberDTO;

public interface MemberService {
	//회원가입
	void join(MemberDTO member);
	//로그인
	public MemberDTO login(MemberDTO member);

}
    