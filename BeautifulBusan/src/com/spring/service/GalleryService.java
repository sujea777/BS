package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.spring.domain.GalleryVO;

public interface GalleryService {
	
	//리스트 
	public List<GalleryVO> list() throws Exception;
	
	//글작성
	public void write(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	
}
