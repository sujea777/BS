package com.spring.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.GalleryVO;

@Repository
public class GalleryDAOImpl implements GalleryDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace="com.spring.mapper.GalleryMapper";

	@Override
	public List<GalleryVO> list() throws Exception {
		
		return session.selectList(namespace+".list");
	}
	
	
	
	
}
