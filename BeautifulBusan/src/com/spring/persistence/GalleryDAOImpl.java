package com.spring.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class GalleryDAOImpl implements GalleryDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace="com.spring.mapper.GalleryMapper";
	
	
	
	
}
