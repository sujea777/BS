package com.spring.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession session;
	
	// boardMapper.xml안에 있는 namespace를 저장
	private static String namespace="com.spring.mapper.MemberMapper";
	
	// 회원가입
	@Override
	public void join(MemberVO vo) throws Exception {
		session.insert(namespace+".join",vo);
		
	}
	
	// 로그인
	@Override
	public MemberVO login(String id, String pass) throws Exception {
		MemberVO vo = session.selectOne(namespace+".login", id);
		 
		if(!pass.equals(vo.getPass())) {
			vo = null;
		}else {
			// 세션으로 vo를 전송할 것이기 때문에 비밀번호를 삭제시켜줌
			vo.setPass(null);
		}
		
		return vo;
	}
	
	
}
