package com.cafe24.bitcamp.search.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.search.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Inject 
	SearchService service;
	
	@RequestMapping("")
	@ResponseBody
	public ModelAndView search(@RequestParam String search) throws Exception {
		
		service.insertWord(search);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("word", search);
		
		List<LectureVO> lecSearch = service.lecSearch(search);
		mav.addObject("lecSearch", lecSearch);
		
		List<CommunityVO> freeSearch = service.freeSearch(search);
		mav.addObject("freeSearch", freeSearch);
		
		List<CommunityVO> reviewSearch = service.reviewSearch(search);
		mav.addObject("reviewSearch", reviewSearch);
		
		List<CommunityProjectVO> projectSearch = service.projectSearch(search);
		mav.addObject("projectSearch", projectSearch);
		
		List<CommunityVO> noticeSearch = service.noticeSearch(search);
		mav.addObject("noticeSearch", noticeSearch);
		
		
		mav.setViewName("notice/search");
	
		
		
		return mav;
	}
	
	
	@RequestMapping("/popKeyword")
	@ResponseBody
	public List<String> popKeyword() throws Exception{
		return service.selectPopKey();
	}
}

