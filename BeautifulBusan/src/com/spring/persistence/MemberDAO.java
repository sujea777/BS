package com.spring.persistence;

import com.spring.domain.MemberVO;

public interface MemberDAO {
	// 회원가입
	public void join(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(String id,String pass) throws Exception;
}
