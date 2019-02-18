package com.cafe24.bitcamp.notice.service;

import java.util.List;
import java.util.Map;

import com.cafe24.bitcamp.notice.domain.NewTechBoardVO;
import com.cafe24.bitcamp.util.Paging;

public interface NoticeService {
	public int cm_totalRecord(Map<String, String> map) throws Exception;
	public Paging getPaging(int cPage, int totalRecord) throws Exception;
	public List<NewTechBoardVO> getNewTechBoardList(Map<String, String> map) throws Exception;
	public NewTechBoardVO selectNewTechBoardOne(int num) throws Exception;
	public List<NewTechBoardVO> selectListMain() throws Exception;
}
