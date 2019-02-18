package com.cafe24.bitcamp.search.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.search.dao.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService {
	
	@Inject
	private SearchDAO dao;
	
	@Override
	public List<LectureVO> lecSearch(String search) throws Exception {
		return dao.lecSearch(search);
	}

	@Override
	public List<CommunityVO> freeSearch(String search) throws Exception {
		return dao.freeSearch(search);
	}

	@Override
	public List<CommunityVO> reviewSearch(String search) throws Exception {
		return dao.reviewSearch(search);
	}

	@Override
	public List<CommunityProjectVO> projectSearch(String search) throws Exception {
		return dao.projectSearch(search);
	}

	@Override
	public List<CommunityVO> noticeSearch(String search) throws Exception {
		return dao.noticeSearch(search);
	}

	@Override
	public void insertWord(String search) throws Exception {
		dao.insertWord(search);
	}

	@Override
	public List<String> selectPopKey() throws Exception {
		return dao.selectPopKey();
	}

}
