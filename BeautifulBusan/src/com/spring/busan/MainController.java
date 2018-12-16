package com.spring.busan;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("/main/*")
public class MainController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(MainController.class);
	
//	@Inject
//	private BoardService service;
//	
//	@RequestMapping(value="/register",method=RequestMethod.GET)
//	public void registerGET(BoardVO board, Model model) throws Exception{
//		logger.info("registerGET() 호출!!!!");
//	};
//	
//	@RequestMapping(value="/register", method=RequestMethod.POST)
//	public String registerPOST(BoardVO board,RedirectAttributes rttr) throws Exception{
//		logger.info("registerPOST() 호출 !!!!!");
//		logger.info(board.toString());
//		
//		// 게시판 글쓰기 
//		service.regist(board);
//		
//		//model.addAttribute("result","success");
//		rttr.addFlashAttribute("result","success");
//		
//		//return "/board/success";
//		//return "redirect:/board/success";
//		return "redirect:/board/listAll";
//	};
//	
//	@RequestMapping(value="/listAll", method=RequestMethod.GET)
//	public void listGET(Model model) throws Exception{
//		logger.info("listGET() 호출!!!!"); 
//		model.addAttribute("list",service.listAll());
//	}
//	
//	@RequestMapping(value="/read", method=RequestMethod.GET)
//	public void readGET(@RequestParam("bno") int bno, Model model) throws Exception{
//		logger.info("readGET() 호출 !!!!");
//		
//		// service 객체로부터 정보를 전달받아서 view(jsp)페이지로 이동
//		BoardVO vo = service.boardread(bno);
//				
//		model.addAttribute("vo",vo);
//		
//	}
	
	@RequestMapping(value="main",method=RequestMethod.GET)
	public void main(Model model) throws Exception{
		logger.info("main 호출!!!");
	}
	
	@RequestMapping(value="haeundae", method=RequestMethod.GET)
	public void haeundae(Model model) throws Exception{
		logger.info("haeundae 호출!!!");
	}
	
	@RequestMapping(value="taejongdae", method=RequestMethod.GET)
	public void taejongdae(Model model) throws Exception{
		logger.info("taejongdae 호출!!!");
	}
	
	@RequestMapping(value="gwangan", method=RequestMethod.GET)
	public void gwangan(Model model) throws Exception{
		logger.info("gwangan 호출!!!");
	}
	
	@RequestMapping(value="yongkung", method=RequestMethod.GET)
	public void yongkung(Model model) throws Exception{
		logger.info("yongkung 호출!!!");
	}
	
	
	
	
	
	
}
