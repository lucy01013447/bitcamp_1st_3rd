package com.cafe24.bitcamp.notice.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.bitcamp.notice.domain.NewTechBoardVO;
import com.cafe24.bitcamp.notice.service.NoticeService;
import com.cafe24.bitcamp.util.Paging;

@Controller
@SessionAttributes({"paging", "message"})
@RequestMapping("/notice")
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Inject
    private NoticeService service;

	@RequestMapping("/newtec")
	public String getNewTechBoardList() throws Exception{
		logger.info("notice/newtechboard");
		return "notice/newtechboard";
	}
	@RequestMapping(value = "/view", method=RequestMethod.GET)
	public ModelAndView getNewTechBoardView(HttpServletRequest request) throws Exception {
		logger.info("notice/newtechview");
		
		int article_num = Integer.parseInt(request.getParameter("num"));
		
		ModelAndView mav = new ModelAndView();
		NewTechBoardVO ntb = service.selectNewTechBoardOne(article_num);
		mav.addObject("ntb", ntb);
		
		mav.setViewName("notice/newtechview");
		return mav;
	}
	@RequestMapping("/intro")
	public String getIntro() throws Exception{
		logger.info("notice/intro");
		return "notice/intro";
	}
	
	
	
	@RequestMapping(value = "/search.ajax" , method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<NewTechBoardVO> searchNewTechBoard(@RequestBody Map<String, String> params) throws Exception {
		return service.getNewTechBoardList(params);
	}
	@RequestMapping(value = "/paging.ajax" , method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Paging pagingNewTechBoard(@RequestBody Map<String, String> params) throws Exception {
		int rPage = (params.get("page") != null) ? Integer.parseInt(params.get("page")) : 1;
		Paging paging = service.getPaging(rPage, service.cm_totalRecord(params));
		return paging;
	}
}

