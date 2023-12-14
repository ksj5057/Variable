package com.vr.Mapper;

import com.vr.Model.MemberDTO;

public interface MemberMapper {
	//회원가입
	void join(MemberDTO member);
	//로그인
	public MemberDTO login(MemberDTO member);
}
  