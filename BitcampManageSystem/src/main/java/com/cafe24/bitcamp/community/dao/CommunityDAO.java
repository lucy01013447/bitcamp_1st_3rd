package com.cafe24.bitcamp.community.dao;

import java.util.List;
import java.util.Map;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.community.domain.ReplyVO;

public interface CommunityDAO {

	public final String Namespace = "community.communityMapper.";
	//교육후기 게시판
	public List<CommunityVO> selectList(Map<String,Integer> map) throws Exception;
	public CommunityVO selectOne(int seq) throws Exception;
	public int totalRecord() throws Exception;
	//조회수 증가
	public void addHitFree(int seq) throws Exception;
	public void addHitLec(int seq) throws Exception;
	public void addHitNotice(int seq) throws Exception;
	//자유게시판
	public List<CommunityVO> selectFree(Map<String,Integer> map) throws Exception;
	public CommunityVO selectOneFree(int seq) throws Exception;
	public int totalRecordFree() throws Exception;
	public void insertFree(CommunityVO vo) throws Exception;
	public void updateFree(CommunityVO vo) throws Exception;
	public void deleteFree(int seq) throws Exception;
	//마지막게시글번호
	public int minSeq() throws Exception;
	//댓글
	public int countReply(Map<String, Integer> map) throws Exception;
	public List<ReplyVO> selectReply(Map<String, Integer> map) throws Exception;
	public void insertReply(ReplyVO reply) throws Exception;
	public void updateReply(ReplyVO reply) throws Exception;
	public void deleteReply(int r_seq) throws Exception;
	//프로젝트게시판
	public List<CommunityProjectVO> selectProject(Map<String,Integer> map) throws Exception;
	public CommunityProjectVO selectOnePro(int seq) throws Exception;
	public int totalRecordPro() throws Exception;
	public List<CommunityProjectVO> selectProMain() throws Exception;
	//공지사항
	public List<CommunityVO> selectNotice(Map<String,Integer> map) throws Exception;
	public CommunityVO selectOneNotice(int seq) throws Exception;
	public int totalRecordNotice() throws Exception;
	public void insertNotice(CommunityVO vo) throws Exception;
	public void updateNotice(CommunityVO vo) throws Exception;
	public void deleteNotice(int seq) throws Exception;
	public int minSeqNotice() throws Exception;
	public List<CommunityVO> selectNoticeMain() throws Exception;
}
