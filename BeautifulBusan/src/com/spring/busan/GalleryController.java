package com.spring.busan;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.service.GalleryService;

@Controller
@RequestMapping("/gallery/*")
public class GalleryController {
	
	@Inject
	private GalleryService service;
	
	private static Logger logger = 
			LoggerFactory.getLogger(GalleryController.class);
	
	@RequestMapping("main")
	public void Gmain() throws Exception{
		logger.info("Gmain 실행!!");
	}
	
	
	
	
	
	
}
