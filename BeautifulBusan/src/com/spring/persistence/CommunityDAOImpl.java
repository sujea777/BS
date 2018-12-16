package com.spring.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.BoardVO;

@Repository
public class CommunityDAOImpl implements CommunityDAO{

	// root-context.xml로부터 SqlSession Bean을 주입 받아온다.
	@Inject
	private SqlSession session;
	
	// boardMapper.xml안에 있는 namespace를 저장
	private static String namespace="com.spring.mapper.BoardMapper";
	
	@Override
	public List<BoardVO> communityListAll() throws Exception {
		return session.selectList(namespace+".cListAll");
	}

	@Override
	public void insert(BoardVO vo) throws Exception {
		session.insert(namespace+".insert",vo);
	}

	@Override
	public BoardVO read(int num) throws Exception {
		return session.selectOne(namespace+".read", num);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		session.update(namespace+".modify", vo);
	}

	@Override
	public void delete(int num) throws Exception {
		session.update(namespace+".delete", num);
	}

	
}
