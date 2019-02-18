package com.cafe24.bitcamp.lecture.controller;

import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.bitcamp.util.Paging;
import com.cafe24.bitcamp.MessageVO;
import com.cafe24.bitcamp.lecture.domain.ApplicantVO;
import com.cafe24.bitcamp.lecture.domain.ConsultVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.lecture.domain.PageReqVO;
import com.cafe24.bitcamp.lecture.service.LectureService;

@Controller
@SessionAttributes({"paging", "message"})
@RequestMapping("/lecture")
public class JobLectureController {
	
	private static final Logger logger = LoggerFactory.getLogger(JobLectureController.class);

	@Inject
    private LectureService service;

	@RequestMapping("")
	public String home(){
		logger.info("lecture/lecture");
		return "lecture/lecture";
	}
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public ModelAndView getLectureList(HttpServletRequest request) throws Exception {
		logger.info("lecture/lecture_list");
		
		ModelAndView mav = new ModelAndView();
		//PageReqVO클래스는 DAO에서 각자 다른형식의 데이터 타입을 받기위한 클래스
		PageReqVO reqVO = new PageReqVO();
		
		String center = request.getParameter("cen");
		String type = request.getParameter("ty");
		int page = Integer.parseInt(request.getParameter("page"));
		reqVO.setCenter(center);
		reqVO.setType(type);
		
		Paging paging = service.getPaging(page, service.cm_totalRecord(reqVO));
		mav.addObject("paging", paging);
		mav.addObject("req", reqVO);
		
		//가져오는 게시글 시작, 끝 seq 설정 
		reqVO.setBegin(paging.getBegin()-1);
		reqVO.setNumPerPage(paging.getNumPerPage());
		List<LectureVO> lecList = service.selectLectureList(reqVO);
		mav.addObject("lecList", lecList);
		
		//내비게이션 메뉴를 위한 요청
		List<LectureVO> navList = service.selectAllList();
		mav.addObject("navList", navList);
		
		mav.setViewName("lecture/lecture_list");
		return mav;
	}
	
	@RequestMapping(value = "/view", method=RequestMethod.GET)
	public ModelAndView getLectureView(HttpServletRequest request) throws Exception {
		logger.info("lecture/lecture_view");
		
		int lec_id = Integer.parseInt(request.getParameter("id"));
		
		ModelAndView mav = new ModelAndView();
		LectureVO lec = service.selectLectureOne(lec_id);
		mav.addObject("lec", lec);
		
		//내비게이션 메뉴를 위한 요청
		List<LectureVO> navList = service.selectAllList();
		mav.addObject("navList", navList);
		
		mav.setViewName("lecture/lecture_view");
		return mav;
	}
	
	@RequestMapping(value = "/apply", method=RequestMethod.GET)
	public ModelAndView getLectureApply(HttpServletRequest request) throws Exception {
		logger.info("lecture/lecture_apply");
		
		int lec_id = Integer.parseInt(request.getParameter("id"));
		
		ModelAndView mav = new ModelAndView();
		LectureVO lec = service.selectLectureOne(lec_id);
		mav.addObject("lec", lec);
		
		//내비게이션 메뉴를 위한 요청
		List<LectureVO> navList = service.selectAllList();
		mav.addObject("navList", navList);
		
		mav.setViewName("lecture/lecture_apply");
		return mav;
	}
	
	@RequestMapping(value = "/addApplicant.do", method=RequestMethod.POST)
	public ModelAndView addApplicant(ApplicantVO vo) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		if(vo != null){
			//System.out.println("교육과정 신청 데이터: " + vo.toString());
			int result = service.addApplicant(vo);
			
			//DB insert Success
			if(result == 1){
				mav.addObject("message", new MessageVO("성공 메시지", "강의 신청을 성공하였습니다."));
				mav.setViewName("redirect:/");
				return mav;
			}
		}
		
		mav.addObject("message", new MessageVO("실패 메시지", "강의 신청을 실패하였습니다."));
		mav.setViewName("redirect:/");
		return mav;
	}
	
	
	//==============================================================
	
	
	@RequestMapping("/consult")
	public String getConsultApply() throws Exception {
		logger.info("lecture/consult_apply");
		return "lecture/consult_apply";
	}
	
	@RequestMapping(value = "/addConsultation.do", method=RequestMethod.POST)
	public ModelAndView addConsultation(ConsultVO vo) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		if(vo != null){
			System.out.println("상담신청 데이터: " + vo.toString());
			int result = service.addConsultation(vo);
			
			//DB insert Success
			if(result == 1){
				mav.addObject("message", new MessageVO("성공 메시지", "상담 신청을 성공하였습니다."));
				mav.setViewName("redirect:/");
				return mav;
			}
		}
		
		mav.addObject("message", new MessageVO("실패 메시지", "상담 신청을 실패하였습니다."));
		mav.setViewName("redirect:/");
		return mav;
	}
	
	
	

}
