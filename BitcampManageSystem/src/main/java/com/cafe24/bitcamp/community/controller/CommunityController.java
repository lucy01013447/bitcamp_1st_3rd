package com.cafe24.bitcamp.community.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.community.domain.ReplyVO;
import com.cafe24.bitcamp.community.service.CommunityService;
import com.cafe24.bitcamp.util.Paging;


@Controller
@RequestMapping("/comm")
public class CommunityController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Inject
	private CommunityService service;
	

	@RequestMapping(value="/free", method=RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request) throws Exception {
		logger.info("community/free");
		
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) intNowPage = Integer.parseInt(nowPage);
		
		//get paging�쓽 �뙆�씪誘명꽣媛�  - cPage, totalRecord
		Paging page = service.getPaging(intNowPage, service.totalRecordFree(), 10, 3);

		//媛��졇�삤�뒗 寃뚯떆湲� �떆�옉, �걹 seq �꽕�젙 
		Map<String, Integer> map = new HashMap();
		map.put("begin", (page.getBegin()-1));
		map.put("numPerPage", page.getNumPerPage());
		
		ModelAndView mav = new ModelAndView();
		List<CommunityVO> freeList = service.selectFree(map);
		mav.addObject("freeList", freeList);

		//寃뚯떆湲� '�옄�꽭�엳蹂닿린'�뿉 �꽆寃⑥쨪 cPage
		mav.addObject("page", page);
		mav.setViewName("community/free");
		return mav;
	}
	
	
	@RequestMapping(value="/free/one", method=RequestMethod.GET)
	public ModelAndView freeOne(HttpServletRequest request) throws Exception {
		
		logger.info("community/free/one");
		
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) intNowPage = Integer.parseInt(nowPage);
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		service.addHitFree(seq);
		CommunityVO free = service.selectOneFree(seq);
		int minSeq= service.minSeq();
		ModelAndView mav = new ModelAndView();
		mav.addObject("f", free);
		mav.addObject("nowPage", intNowPage);
		mav.addObject("minSeq", minSeq);
		mav.setViewName("community/freeOne");
		
		return mav;
	}
	
	
	@RequestMapping("/free/insertPage")
	public String freeInsert() throws Exception {
		logger.info("community/free/insertPage");
		return "community/insertFree";
	}
	
	
	@RequestMapping("/free/insertDAO")
	public String freeInsertDao(CommunityVO vo) throws Exception {
		logger.info("community/free/insertDAO");
		MultipartFile file = vo.getUploadFile();
		String savedName = "";
		if(!file.isEmpty()) {
			logger.info("originalName : " + file.getOriginalFilename());
			logger.info("size : " + file.getSize());
			logger.info("contentType : " + file.getContentType());
			
			//savedName = service.uploadFile(file.getOriginalFilename(), file.getBytes());
		}
		vo.setUploadfilename(savedName);
		vo.setUploadfilepath("C:/MyStudy/Spring_WebHosting_3rdProject/Files" + savedName);
		service.insertFree(vo);
		return "redirect:/comm/free";
	}
	
	
	/*@RequestMapping(value = "/comm/free/fileDownload", method = RequestMethod.GET)
	public void fileDownload(HttpServletRequest request ) throws Exception{
		String fileName = request.getParameter("fileName");
		String filePath = 
	}*/
	
	
	@RequestMapping(value="/free/updatePage", method=RequestMethod.GET)
	public ModelAndView freeUpdate(HttpServletRequest request) throws Exception {
		
		logger.info("community/free/updatePage");
		
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) intNowPage = Integer.parseInt(nowPage);
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		CommunityVO free = service.selectOneFree(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("f", free);
		mav.addObject("nowPage", intNowPage);
		mav.setViewName("community/updateFree");
		return mav;
	}
	
	
	@RequestMapping("/free/updateDAO")
	public String freeUpdateDao(CommunityVO vo) throws Exception {
		logger.info("community/free/updateDAO");
		service.updateFree(vo);
		int seq = vo.getSeq();
		return "redirect:/comm/free/one?seq=" + seq;
	}
	
	
	@RequestMapping(value="/free/delete", method=RequestMethod.GET)
	public String freeUpdateDao(HttpServletRequest request) throws Exception {
		logger.info("community/free/delete");
		int seq = Integer.parseInt(request.getParameter("seq"));
		service.deleteFree(seq);
		return "redirect:/comm/free";
	}
	
	
	//댓글 - 자유게시판 및 공지사항 공용
	@RequestMapping("/countReply")
	@ResponseBody
	public int countReply(@RequestParam int b_seq, @RequestParam int type) throws Exception {
		Map<String, Integer> map = new HashMap();
		map.put("b_seq", b_seq);
		map.put("type", type);
		
		return service.countReply(map);
	}
	

	@RequestMapping("/replyList")
	@ResponseBody
	public List<ReplyVO> replyList(@RequestParam int b_seq, @RequestParam int type, Model model) throws Exception {
		Map<String, Integer> map = new HashMap();
		map.put("b_seq", b_seq);
		map.put("type", type);
		//type : 1-공지사항 자유게시판 , 2-공지사항게시판
		return service.selectReply(map);
	}
	
	
	@RequestMapping("/insertReply")
	@ResponseBody
	public void insertReply(ReplyVO rvo) throws Exception {
		service.insertReply(rvo);
	}
	
	
	@RequestMapping("/updateReply")
	@ResponseBody
	public void updateReply(ReplyVO vo) throws Exception {
		service.updateReply(vo);
	}
	
	
	@RequestMapping("/deleteReply")
	@ResponseBody
	public void deleteReply(@RequestParam int r_seq) throws Exception {
		service.deleteReply(r_seq);
	}
	
	
	//교육후기 게시판
	@RequestMapping(value="/lecture", method=RequestMethod.GET)
	public ModelAndView lecture(HttpServletRequest request) throws Exception {
		
		logger.info("community/lecture");
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null)intNowPage = Integer.parseInt(nowPage);
				
		//get paging�쓽 �뙆�씪誘명꽣媛�  - cPage, totalRecord
		Paging page = service.getPaging(intNowPage, service.totalRecord(), 4, 5);
		
		//媛��졇�삤�뒗 寃뚯떆湲� �떆�옉, �걹 seq �꽕�젙 
		Map<String, Integer> map = new HashMap();
		map.put("begin", (page.getBegin()-1));
		map.put("numPerPage", page.getNumPerPage());
		List<CommunityVO> lecList = service.selectList(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lecList", lecList);
		mav.addObject("page", page);
		mav.setViewName("community/lecture");
		return mav;
	}

	
	@RequestMapping(value="/lecture/one", method=RequestMethod.GET)
	public ModelAndView lectureOne(HttpServletRequest request) throws Exception {
		
		logger.info("community/lecture/one");
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		service.addHitLec(seq);
		CommunityVO lec = service.selectOne(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lec", lec);
		mav.setViewName("community/lectureOne");
		
		return mav;
	}
	
	
	//교육생프로젝트 게시판
	@RequestMapping(value="/project", method=RequestMethod.GET)
	public ModelAndView project(HttpServletRequest request) throws Exception {
		
		logger.info("community/project");
		
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) {
			intNowPage = Integer.parseInt(nowPage);
		}
		
		//get paging�쓽 �뙆�씪誘명꽣媛�  - cPage, totalRecord
		Paging page = service.getPaging(intNowPage, service.totalRecordPro(), 3, 5);
		
		//媛��졇�삤�뒗 寃뚯떆湲� �떆�옉, �걹 seq �꽕�젙 
		Map<String, Integer> map = new HashMap();
		map.put("begin", (page.getBegin()-1));
		map.put("numPerPage", page.getNumPerPage());
		List<CommunityProjectVO> proList = service.selectProject(map);
 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("proList", proList);
		mav.addObject("page", page);
		mav.setViewName("community/project");
		return mav;
	}
	
	
	@RequestMapping(value="/project/one", method=RequestMethod.GET)
	public ModelAndView projectOne(HttpServletRequest request) throws Exception {
		logger.info("community/project/one");
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		CommunityProjectVO pro = service.selectOnePro(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pro", pro);
		mav.setViewName("community/projectOne");		
		return mav;
	}
	
	
	//공지사항
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public ModelAndView notice(HttpServletRequest request) throws Exception {

		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) intNowPage = Integer.parseInt(nowPage);
		Paging page = service.getPaging(intNowPage, service.totalRecordNotice(), 15, 3);

		Map<String, Integer> map = new HashMap();
		map.put("begin", (page.getBegin()-1));
		map.put("numPerPage", page.getNumPerPage());
		
		ModelAndView mav = new ModelAndView();
		List<CommunityVO> noticeList = service.selectNotice(map);
		mav.addObject("noticeList", noticeList);

		mav.addObject("page", page);
		mav.setViewName("notice/notice");
		
		return mav;
		
	}
	
	
	@RequestMapping(value="/notice/one", method=RequestMethod.GET)
	public ModelAndView noticeOne(HttpServletRequest request) throws Exception {
		
		logger.info("notice/one");
		
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) intNowPage = Integer.parseInt(nowPage);
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		service.addHitNotice(seq);
		CommunityVO notice = service.selectOneNotice(seq);
		int minSeq= service.minSeq();
		ModelAndView mav = new ModelAndView();
		mav.addObject("n", notice);
		mav.addObject("nowPage", intNowPage);
		mav.addObject("minSeq", minSeq);
		mav.setViewName("notice/noticeOne");
		
		return mav;
	}
	
	
	@RequestMapping("/notice/insertPage")
	public String noticeInsert() throws Exception {
		logger.info("community/notice/insertPage");
		return "notice/insertNotice";
	}
	
	
	@RequestMapping("/notice/insertDAO")
	public String noticeInsertDao(CommunityVO vo) throws Exception {
		logger.info("notice/insertDAO");
		MultipartFile file = vo.getUploadFile();
		String savedName = "";
		if(!file.isEmpty()) {
			logger.info("originalName : " + file.getOriginalFilename());
			logger.info("size : " + file.getSize());
			logger.info("contentType : " + file.getContentType());
			
			//savedName = service.uploadFile(file.getOriginalFilename(), file.getBytes());
		}
		vo.setUploadfilename(savedName);
		vo.setUploadfilepath("C:/MyStudy/Spring_WebHosting_3rdProject/Files" + savedName);
		
		if (vo.getType().equalsIgnoreCase("head")) {
			vo.setType("FIXED");
		} else {
			vo.setType("ORDER");
		}
		
		service.insertNotice(vo);
		return "redirect:/comm/notice";
	}
	
	
	/*@RequestMapping(value = "/comm/free/fileDownload", method = RequestMethod.GET)
	public void fileDownload(HttpServletRequest request ) throws Exception{
		String fileName = request.getParameter("fileName");
		String filePath = 
	}*/
	
	
	@RequestMapping(value="/notice/updatePage", method=RequestMethod.GET)
	public ModelAndView noticeUpdate(HttpServletRequest request) throws Exception {
		
		logger.info("notice/updatePage");
		
		//nowPage�꽕�젙
		String nowPage = request.getParameter("nowPage");
		int intNowPage = 1;
		if (nowPage != null) intNowPage = Integer.parseInt(nowPage);
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		CommunityVO notice = service.selectOneNotice(seq);

		ModelAndView mav = new ModelAndView();
		mav.addObject("n", notice);
		mav.addObject("nowPage", intNowPage);
		mav.setViewName("notice/updateNotice");
		return mav;
	}
	
	
	@RequestMapping("/notice/updateDAO")
	public String noticeUpdateDao(CommunityVO vo) throws Exception {
		logger.info("notice/updateDAO");
		
		if (vo.getType().equalsIgnoreCase("head")) {
			vo.setType("FIXED");
		} else {
			vo.setType("ORDER");
		}
		int seq = vo.getSeq();
		service.updateNotice(vo);
		return "redirect:/comm/notice/one?seq=" + seq;
	}
	
	
	@RequestMapping(value="/notice/delete", method=RequestMethod.GET)
	public String noticeUpdateDao(HttpServletRequest request) throws Exception {
		logger.info("notice/delete");
		int seq = Integer.parseInt(request.getParameter("seq"));
		service.deleteNotice(seq);
		return "redirect:/comm/notice";
	}
	
	
}
