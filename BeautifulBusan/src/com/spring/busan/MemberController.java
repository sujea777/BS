package com.spring.busan;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.MemberVO;
import com.spring.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	private static Logger logger =
			LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping("/login")
	public void LoginPage() throws Exception {
		logger.info("LoginPage 실행!");
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String LoginPagePost(@RequestParam("id")String id, @RequestParam("pass")String pass, RedirectAttributes rttr, HttpServletResponse response, HttpSession session) throws Exception {
		logger.info("LoginPagePost 실행!");
		String url="";
		MemberVO vo = service.login(id, pass);
		if(vo!=null) {
			// 세션 생성 로그인 처리
			session.setAttribute("MemberVO", vo);
			url="redirect:/community/communityMain";
		}else if(vo==null) {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력 정보를 확인 해주세요'); history.go(-1);</script>");
			out.flush();
			out.close();
		}
		return url;
		
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session,RedirectAttributes rttr) throws Exception{
		logger.info("logout 실행");
		session.removeAttribute("MemberVO");
		
		return "redirect:/main/main";
	}
	
	@RequestMapping("/join")
	public void JoinPage() throws Exception {
		logger.info("JoinPage 실행!");
	}
	
	@RequestMapping("/ReMessage")
	public void ReMessage() throws Exception {
		logger.info("ReMessage 실행!");
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String JoinPagePost(MemberVO vo,RedirectAttributes rttr) throws Exception{
		logger.info("JoinPagePost 실행!");
		service.join(vo);
		rttr.addFlashAttribute("result","success");
		
		return "redirect:/member/login";
	}
	
	
}
