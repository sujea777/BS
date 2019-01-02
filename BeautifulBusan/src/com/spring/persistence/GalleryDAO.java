package com.spring.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.domain.GalleryVO;

public interface GalleryDAO {
	
	public List<GalleryVO> list() throws Exception;
	
}
