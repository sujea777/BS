package com.spring.persistence;

import java.util.List;

import com.spring.domain.BoardVO;

public interface CommunityDAO {
	
	// 게시판 글 로드
	public List<BoardVO> communityListAll() throws Exception;
	
	// 글 작성
	public void insert(BoardVO vo) throws Exception;
	
	// 글 읽기
	public BoardVO read(int num) throws Exception;
	
	// 글 수정
	public void modify(BoardVO vo) throws Exception;
	
	// 글 삭제
	public void delete(int num) throws Exception;
}
