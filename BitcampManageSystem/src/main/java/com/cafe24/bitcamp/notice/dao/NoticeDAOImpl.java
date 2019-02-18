package com.cafe24.bitcamp.notice.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cafe24.bitcamp.notice.domain.NewTechBoardVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
    private SqlSession sqlSession;

	@Override
	public int cm_totalRecord(Map<String, String> map) throws Exception {
		return sqlSession.selectOne(Namespace+"totalRecord", map) ;
	}
	
	@Override
	public List<NewTechBoardVO> selectNewTechBoardList(Map<String, String> map) throws Exception {
		return sqlSession.selectList(Namespace+"selectNewTechBoardList", map);
	}
	
	@Override
	public NewTechBoardVO selectNewTechBoardOne(int num) throws Exception {
		return sqlSession.selectOne(Namespace+"selectNewTechBoardOne", num);
	}
	
	@Override
	public List<NewTechBoardVO> selectListMain() throws Exception {
		return sqlSession.selectList(Namespace+"selectListMain");
	}
}
