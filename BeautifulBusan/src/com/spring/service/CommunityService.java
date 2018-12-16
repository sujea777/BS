package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;

public interface CommunityService {
	//글목록
	public List<BoardVO> communityListAll() throws Exception;
	
	//글작성
	public void insert(BoardVO vo) throws Exception;
	
	//글읽기
	public BoardVO read(int num) throws Exception;
	
	//글수정
	public void modify(BoardVO vo) throws Exception;
	
	//글삭제
	public void delete(int num) throws Exception;
}
