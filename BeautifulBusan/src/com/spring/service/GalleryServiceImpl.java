package com.spring.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.domain.GalleryVO;
import com.spring.persistence.GalleryDAO;

@Service
public class GalleryServiceImpl implements GalleryService {
	
	@Inject
	private GalleryDAO gdao;

	@Override
	public List<GalleryVO> list() throws Exception {
		return gdao.list();
	}

	@Override
	public void write(Map<String, Object> map, HttpServletRequest request) throws Exception {
		
		//gdao.write(map);
	     
	    MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
	    Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
	    MultipartFile multipartFile = null;
	    while(iterator.hasNext()){
	        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	        if(multipartFile.isEmpty() == false){
//	            log.debug("------------- file start -------------");
//	            log.debug("name : "+multipartFile.getName());
//	            log.debug("filename : "+multipartFile.getOriginalFilename());
//	            log.debug("size : "+multipartFile.getSize());
//	            log.debug("-------------- file end --------------\n");
	        }
	    }


	}
	
	
	
	
}
