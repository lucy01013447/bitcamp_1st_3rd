package com.cafe24.bitcamp;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.community.service.CommunityService;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.lecture.service.LectureService;
import com.cafe24.bitcamp.member.domain.UserVO;
import com.cafe24.bitcamp.member.service.UserService;
import com.cafe24.bitcamp.notice.domain.NewTechBoardVO;
import com.cafe24.bitcamp.notice.service.NoticeService;
import com.cafe24.bitcamp.search.service.SearchService;

@Controller
public class HomeController {
	
	//커맨드(데이터)객체
	//커맨드객체의 속성은  클래스네임을 통해서만 찾을수 있다.
	//view는 표현식을 통하여 커맨드 객체 호출한다. 첫자리는 무조건 소문자여야 하며, 그 다음은 대소문자를 구분한다.
	//예)(MemberVO mvo)의 경우 view(JSP)에서 호출
	//      [가능]${memberVO.name}
	//      [불가능]${MemberVO.name}
	//      [불가능]${membervo.name}
	//      [불가능]${mvo.name}
	//위 방법은 커맨드객체를 Model객체에 별도로 addAttribute하지 않을때의 방법이다.
	//name=홍길동&id=abc&pw=123&email=ooops
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
    private UserService userService;
	@Inject
    private LectureService lectureService;
	@Inject
    private NoticeService noticeService;
	@Inject
	private CommunityService commService;
	@Inject
	private SearchService searchService;
	
	@RequestMapping("/")
	public ModelAndView home() throws Exception{
		ModelAndView mav = new ModelAndView();
		logger.info("home");
		
		//개발단계에서 DB접속 확인해볼 테스트코드
		List<UserVO> userList = userService.selectUserList();
		mav.addObject("userList", userList);
		
		List<LectureVO> govLecList = lectureService.selectListMain(1);
		mav.addObject("govLecList", govLecList);

		List<NewTechBoardVO> newtechList = noticeService.selectListMain();
		mav.addObject("newtechList", newtechList);
		
		List<CommunityProjectVO> projectList = commService.selectProMain();
		mav.addObject("projectList", projectList);
		
		List<CommunityVO> noticeList = commService.selectNoticeMain();
		mav.addObject("noticeList", noticeList);
		

		
		mav.setViewName("home");
		return mav;
	}
	
	
}
