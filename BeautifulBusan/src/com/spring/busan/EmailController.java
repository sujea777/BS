package com.spring.busan;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/qna/*")
public class EmailController {
	
	private static Logger logger = 
	LoggerFactory.getLogger(CommunityController.class);
	
	
	@RequestMapping("main")
	public void qna() throws Exception{
		logger.info("main 실행!!!");
	}
	
	@RequestMapping(value="main", method=RequestMethod.POST)
	public void qnaPOST() throws Exception{
		
	}
	
}
