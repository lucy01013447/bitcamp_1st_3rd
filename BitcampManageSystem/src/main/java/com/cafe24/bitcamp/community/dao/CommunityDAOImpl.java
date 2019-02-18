package com.cafe24.bitcamp.community.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.community.domain.ReplyVO;

@Repository
public class CommunityDAOImpl implements CommunityDAO {

	@Inject
    private SqlSession sqlSession;
	

	//교육후기 게시판
	@Override
	public List<CommunityVO> selectList(Map<String, Integer> map) throws Exception {
		return sqlSession.selectList(Namespace + "selectList", map);
	}
	@Override
	public CommunityVO selectOne(int seq) throws Exception {
		return sqlSession.selectOne(Namespace + "selectOne", seq);
	}
	@Override
	public int totalRecord() throws Exception {
		return sqlSession.selectOne(Namespace + "totalRecord") ;
	}
	@Override
	public void addHitLec(int seq) throws Exception {
		sqlSession.update(Namespace + "addHitLec", seq);
	}
	
	//자유게시판
	@Override
	public List<CommunityVO> selectFree(Map<String, Integer> map) throws Exception {
		return sqlSession.selectList(Namespace + "selectFree", map);
	}

	@Override
	public CommunityVO selectOneFree(int seq) throws Exception {
		return sqlSession.selectOne(Namespace + "selectOneFree", seq);
	}

	@Override
	public int totalRecordFree() throws Exception {
		return sqlSession.selectOne(Namespace + "totalRecordFree");
	}
	
	@Override
	public void insertFree(CommunityVO vo) throws Exception {
		sqlSession.insert(Namespace + "insertFree", vo);
	}
	
	@Override
	public void updateFree(CommunityVO vo) throws Exception {
		sqlSession.update(Namespace + "updateFree", vo);
	}
	@Override
	public void deleteFree(int seq) throws Exception {
		sqlSession.delete(Namespace + "deleteFree", seq);
	}
	@Override
	public void addHitFree(int seq) throws Exception {
		sqlSession.update(Namespace + "addHitFree", seq);
	}
	
	//프로젝트게시판
	@Override
	public List<CommunityProjectVO> selectProject(Map<String, Integer> map) throws Exception {
		return sqlSession.selectList(Namespace + "selectProject", map);
	}
	@Override
	public CommunityProjectVO selectOnePro(int seq) throws Exception {
		return sqlSession.selectOne(Namespace + "selectOnePro", seq);
	}
	@Override
	public int totalRecordPro() throws Exception {
		return sqlSession.selectOne(Namespace + "totalRecordPro");
	}

	@Override
	public List<CommunityProjectVO> selectProMain() throws Exception {
		return sqlSession.selectList(Namespace + "selectProMain");
	}
	//댓글
	@Override
	public int countReply(Map<String, Integer> map) throws Exception {
		return sqlSession.selectOne(Namespace + "countReply", map);
	}
	@Override
	public List<ReplyVO> selectReply(Map<String, Integer> map) throws Exception {
		return sqlSession.selectList(Namespace + "selectReply", map);
	}
	@Override
	public void insertReply(ReplyVO reply) throws Exception {
		sqlSession.insert(Namespace + "insertReply", reply);
	}
	@Override
	public void updateReply(ReplyVO reply) throws Exception {
		sqlSession.update(Namespace + "updateReply", reply);
	}
	@Override
	public void deleteReply(int r_seq) throws Exception {
		sqlSession.delete(Namespace + "deleteReply", r_seq);
	}
	@Override
	public int minSeq() throws Exception {
		return sqlSession.selectOne(Namespace + "minSeq");
	}
	
	//공지사항게시판
	@Override
	public List<CommunityVO> selectNotice(Map<String, Integer> map) throws Exception {
		return sqlSession.selectList(Namespace + "selectNotice", map);
	}
	@Override
	public CommunityVO selectOneNotice(int seq) throws Exception {
		return sqlSession.selectOne(Namespace + "selectOneNotice", seq);
	}
	@Override
	public int totalRecordNotice() throws Exception {
		return sqlSession.selectOne(Namespace + "totalRecordNotice");
	}
	@Override
	public void insertNotice(CommunityVO vo) throws Exception {
		sqlSession.insert(Namespace + "insertNotice", vo);
	}
	@Override
	public void updateNotice(CommunityVO vo) throws Exception {
		sqlSession.update(Namespace + "updateNotice", vo);
	}
	@Override
	public void deleteNotice(int seq) throws Exception {
		sqlSession.delete(Namespace + "deleteNotice", seq);
	}
	@Override
	public int minSeqNotice() throws Exception {
		return sqlSession.selectOne(Namespace + "minSeqNotice");
	}
	@Override
	public void addHitNotice(int seq) throws Exception {
		sqlSession.update(Namespace + "addHitNotice", seq);
	}

	@Override
	public List<CommunityVO> selectNoticeMain() throws Exception {
		return sqlSession.selectList(Namespace + "selectNoticeMain");
	}
	
	
	
	
}
