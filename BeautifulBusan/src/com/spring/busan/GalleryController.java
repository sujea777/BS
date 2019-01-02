package com.spring.busan;

import javax.activation.CommandMap;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public void Gmain(Model model) throws Exception{
		logger.info("Gmain 실행!!");
		
		model.addAttribute("list", service.list());
	}
	
	@RequestMapping("write")
	public void Gwrite(CommandMap commandMap,HttpServletRequest request) throws Exception{
		logger.info("Gwrite 실행!!!");
		
		//service.write(commandMap. ,request);
	}
	
	
	
	
	
}
