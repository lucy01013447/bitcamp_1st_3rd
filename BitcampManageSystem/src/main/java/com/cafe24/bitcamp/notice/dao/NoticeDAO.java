package com.cafe24.bitcamp.notice.dao;

import java.util.List;
import java.util.Map;

import com.cafe24.bitcamp.notice.domain.NewTechBoardVO;

public interface NoticeDAO {
	
	public final String Namespace = "member.noticeMapper.";
	public int cm_totalRecord(Map<String, String> map) throws Exception;
	public List<NewTechBoardVO> selectNewTechBoardList(Map<String, String> map) throws Exception;
	public NewTechBoardVO selectNewTechBoardOne(int num) throws Exception;
	
	public List<NewTechBoardVO> selectListMain() throws Exception;
}
