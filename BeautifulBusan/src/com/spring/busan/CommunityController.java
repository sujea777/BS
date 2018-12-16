package com.spring.busan;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.BoardVO;
import com.spring.service.CommunityService;

@Controller
@RequestMapping("/community/*")
public class CommunityController {
	
	@Inject
	private CommunityService service;
	
	private static Logger logger = 
			LoggerFactory.getLogger(CommunityController.class);
	
	@RequestMapping("communityMain")
	public void communityMain(Model model) throws Exception{
		logger.info("communityMain 실행 !!!");
		model.addAttribute("list",service.communityListAll());
	}
	
	@RequestMapping("write")
	public void communityWrite() throws Exception{
		logger.info("write 실행!!!");
		
	}
	
	@RequestMapping("writePro")
	public String writePro(BoardVO vo,RedirectAttributes rttr) throws Exception{
		logger.info("wirtePro 실행!!!");
		
		service.insert(vo);
		
		return "redirect:/community/communityMain";
	}
	
	@RequestMapping("read")
	public void read(@RequestParam("num")int num,Model model) throws Exception{
		logger.info("read 실행!!!");
		
		model.addAttribute("bvo", service.read(num));
	}
	
	@RequestMapping("modify")
	public void modify(@RequestParam("num")int num,Model model) throws Exception{
		logger.info("modify 실행!!!");
		
		model.addAttribute("bvo", service.read(num));
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifyPOST(BoardVO vo,RedirectAttributes rttr) throws Exception{
		logger.info("modifyPOST 실행!!!");
		service.modify(vo);
		return "redirect:/community/communityMain";
	}
	
	@RequestMapping("deletepage")
	public String delete(@RequestParam("num")int num,RedirectAttributes rttr) throws Exception{
		logger.info("deletepage 실행!!!");
		service.delete(num);
		return "redirect:/community/communityMain";
	}
	
	
	
}
