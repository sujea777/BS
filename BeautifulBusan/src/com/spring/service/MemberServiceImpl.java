package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.MemberVO;
import com.spring.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO mdao;
	
	//회원가입
	@Override
	public void join(MemberVO vo) throws Exception {
		mdao.join(vo);
	}

	@Override
	public MemberVO login(String id, String pass) throws Exception {
		MemberVO vo = mdao.login(id, pass);
		
		return vo;
		
	}
	
	
	
}
