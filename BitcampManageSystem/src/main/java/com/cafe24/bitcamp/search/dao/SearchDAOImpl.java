package com.cafe24.bitcamp.search.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;

@Repository
public class SearchDAOImpl implements SearchDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<LectureVO> lecSearch(String search) throws Exception {
		return sqlSession.selectList(Namespace + "lecSearch", search);
	}

	@Override
	public List<CommunityVO> freeSearch(String search) throws Exception {
		return sqlSession.selectList(Namespace + "freeSearch", search);
	}

	@Override
	public List<CommunityVO> reviewSearch(String search) throws Exception {
		return sqlSession.selectList(Namespace + "reviewSearch", search);
	}

	@Override
	public List<CommunityProjectVO> projectSearch(String search) throws Exception {
		return sqlSession.selectList(Namespace + "projectSearch", search);
	}

	@Override
	public List<CommunityVO> noticeSearch(String search) throws Exception {
		return sqlSession.selectList(Namespace + "noticeSearch", search);
	}

	@Override
	public void insertWord(String search) throws Exception {
		sqlSession.insert(Namespace + "insertWord", search);
	}

	@Override
	public List<String> selectPopKey() throws Exception {
		return sqlSession.selectList(Namespace + "selectPopKey");
	}
	
	
	
	
}
