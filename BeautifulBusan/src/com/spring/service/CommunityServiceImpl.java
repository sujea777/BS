package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.persistence.CommunityDAO;

@Service
public class CommunityServiceImpl implements CommunityService{
	
	@Inject
	private CommunityDAO cdao;

	@Override
	public List<BoardVO> communityListAll() throws Exception {
		return cdao.communityListAll();
	}

	@Override
	public void insert(BoardVO vo) throws Exception {
		cdao.insert(vo);
	}

	@Override
	public BoardVO read(int num) throws Exception {
		return cdao.read(num);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		cdao.modify(vo);
	}

	@Override
	public void delete(int num) throws Exception {
		cdao.delete(num);
	}
	
	

}
