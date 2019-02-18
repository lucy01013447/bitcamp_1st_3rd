package com.cafe24.bitcamp.member.controller;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.bitcamp.MessageVO;
import com.cafe24.bitcamp.member.domain.UserVO;
import com.cafe24.bitcamp.member.service.UserService;
import com.cafe24.bitcamp.util.MailHandler;
import com.cafe24.bitcamp.util.SHA256;
import com.cafe24.bitcamp.util.VerifyRecaptcha;

@Controller
@SessionAttributes({"user", "message"})
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
    private UserService service;
	
	@Inject
	private JavaMailSender mailSender;

	@RequestMapping("/login")
	public String memberLogin(){
		logger.info("member/login");
		return "member/login";
	}
	
	@RequestMapping("/register")
	public String userRegister(){
		logger.info("member/user_register");
		return "member/user_register";
	}
	
	@RequestMapping("/register/auth")
	public String userEmailAuthentication(){
		logger.info("member/email_auth");
		return "member/email_auth";
	}
	
	//로그인 요청
	@RequestMapping(value="/memberlogin.do", method=RequestMethod.POST)
	public ModelAndView memberLogIn(UserVO vo, HttpServletResponse response, HttpServletRequest request, @CookieValue(value="remember", required=false)Cookie rCookie) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		String remember = request.getParameter("remember");
		
		System.out.println("[로그인]이메일: " + vo.getEmail() + ", 비밀번호: " + vo.getPassword() + ", 기억: " + remember);
		//전달받은 vo객체를 통해 서비스로직을 수행하고 반환받은 결과를 다시 vo객체에 보관한다.
		vo = service.userLogin(vo);
		
		//계정이 존재하지 않는 경우
		if(vo == null){
			mav.addObject("message", new MessageVO("실패 메시지", "이메일 주소나 비밀번호가 정확하지 않습니다."));
			mav.setViewName("redirect:/login");
		}
		//계정이 이메일 인증을 받지 않은경우
		else if(!vo.isEmail_check()){
			mav.addObject("message", new MessageVO("실패 메시지", "이메일 인증을 받지 못한 계정입니다. \n 이메일 인증을 진행하여 주십시오."));
			mav.setViewName("redirect:/login");
		}
		//정상적인 로그인
		else{
			Cookie cookie = new Cookie("remember", vo.getEmail());
			cookie.setPath("/");
			if(remember != null){
				cookie.setMaxAge(60*60*24*30);
				response.addCookie(cookie);
			}else{
				if(rCookie != null){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
			
			mav.addObject("user", vo);
			mav.addObject("message", new MessageVO("확인 메시지", vo.getName()+"님 환영합니다!"));
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	
	//로그아웃 요청
	@RequestMapping("/memberlogout.do")
	public String memberLogOut(SessionStatus status, HttpSession session) throws Exception
	{
		/*
		 * Session 에 등록된 user 는 SessionStatus.setComplete()을 실행하기 전까지는 
		 * Session에서 내부의 데이터를 유지하게 된다. SessionStatus.setComplete()을 실행하면 
		 * Controller에서 선언해둔 SessionAttribute에 등록된 데이터들이 초기화된다.
		 */
		status.setComplete();
		session.invalidate();
		
		//redirect 방법으로 홈으로 이동
		return "redirect:/";
	}
	
	
	//회원가입 요청
	@RequestMapping(value="/userregister.do", method=RequestMethod.POST)
	public ModelAndView userRegister(UserVO vo, HttpServletRequest request) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		// get reCAPTCHA request param
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
		//System.out.println("Captcha Verify: "+verify);
		
		//reCAPTCHA 검증을 실시하고 체크를 받았으면 true 아니면 false이다.
		//verify이 false이면 다시 회원가입 페이지로 redirect 한다.
		if(!verify){
			mav.addObject("message", new MessageVO("실패 메시지", "자동가입방지 양식 체크를 해주시기 바랍니다."));
			mav.setViewName("redirect:/register");
			return mav;
		}
		
		//System.out.println("[로그인]이메일: " + vo.getEmail() + ", 비밀번호: " + vo.getPassword());
		//이메일주소를 기반으로한 헤시코드를 생성하고 email_hash에 보관한다.
		vo.setEmail_hash(SHA256.getSHA256(vo.getEmail()));
		service.userRegister(vo);

		//이메일 인증메일 전송
		MailHandler mailHandler = new MailHandler(mailSender);
		String host = "http://localhost:8080";
		//String host = "http://ohss122191.cafe24.com";	//cafe24서버 host
		String emailHash = SHA256.getSHA256(vo.getEmail());
		mailHandler.setFrom("icyram1221", "비트캠프[오승세]");
		mailHandler.setTo(vo.getEmail());
		mailHandler.setSubject("비트캠프 프로젝트 웹페이지 회원가입 인증메일입니다.");
		String content = String.format("<p>다음 링크에 접속하여 이메일 인증을 진행하세요.</p> "
							+ "<a href='%s/email_auth.do?email=%s&hash=%s'>이메일 인증하기</a>"
							, host, vo.getEmail(), emailHash);
		mailHandler.setText(content);
		mailHandler.send();
		
		mav.setViewName("redirect:/register/auth");
		return mav;
	}
	
	//이메일인증 요청
	@RequestMapping(value="/email_auth.do", method=RequestMethod.GET)
	public ModelAndView authenticationUserEmail(HttpServletRequest request) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		UserVO vo = new UserVO();
		vo.setEmail(request.getParameter("email"));
		vo.setEmail_hash(request.getParameter("hash"));
		String resultUserId = service.authEmailHash(vo);
		
		//인증을 위한 이메일과 해시코드가 일치할 경우 null이 아니다. 
		if(resultUserId != null){
			//인증 성공 -> 이메일 체크를 true로 전환
			int result = service.changeEmailCheck(resultUserId);
			if(result == 1)
				mav.addObject("message", new MessageVO("성공 메시지", "이메일 인증에 성공하였습니다."));
		}else{
			//인증에 실패한 것이다. -> 비정상적인 접근
			mav.addObject("message", new MessageVO("실패 메시지", "비정상적인 경로로인해 로그인에 실패하였습니다."));
		}
		
		//redirect 방법으로 홈으로 이동
		mav.setViewName("redirect:/");
		return mav;
	}
	
	
	//[AJAX 요청] 이메일,닉네임 중복확인
	@RequestMapping(value = "/confirm-userinfo.ajax" , method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> confirmUserInfo(@RequestBody Map<String, String> params) throws Exception {
		Map<String, String> resultMap = new HashMap<String, String>();
		String message = "D";
		
		if(params.get("email") != null){
			message = service.confirmEmail(params.get("email"));
			if(message == "T")
				resultMap.put("message", message);
			else
				resultMap.put("message", message);
		}
		else if(params.get("nickname") != null){
			message = service.confirmNickname(params.get("nickname"));
			if(message == "T")
				resultMap.put("message", message);
			else
				resultMap.put("message", message);
		}

		return resultMap;
	}

}
