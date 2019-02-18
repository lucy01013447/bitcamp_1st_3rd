package com.cafe24.bitcamp.search.dao;

import java.util.List;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;

public interface SearchDAO {

	public final String Namespace = "search.searchMapper.";
	
	public List<LectureVO> lecSearch(String search) throws Exception;
	public List<CommunityVO> freeSearch(String search) throws Exception;
	public List<CommunityVO> reviewSearch(String search) throws Exception;
	public List<CommunityProjectVO> projectSearch(String search) throws Exception;
	public List<CommunityVO> noticeSearch(String search) throws Exception;
	public void insertWord(String search) throws Exception;
	public List<String> selectPopKey() throws Exception;
}
