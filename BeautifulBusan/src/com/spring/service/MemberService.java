package com.spring.service;

import com.spring.domain.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void join(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(String id, String pass) throws Exception;
}
