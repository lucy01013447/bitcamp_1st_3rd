package com.cafe24.bitcamp.lecture.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cafe24.bitcamp.lecture.domain.ApplicantVO;
import com.cafe24.bitcamp.lecture.domain.ConsultVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.lecture.domain.PageReqVO;

@Repository
public class LectureDAOImpl implements LectureDAO {
	
	@Inject
    private SqlSession sqlSession;
	
	@Override
	public List<LectureVO> selectLectureList(PageReqVO vo) throws Exception {
		return sqlSession.selectList(Namespace + "selectLectureList", vo);
	}

	@Override
	public int cm_totalRecord(PageReqVO vo) throws Exception {
		return sqlSession.selectOne(Namespace + "totalRecord", vo) ;
	}
	
	@Override
	public List<LectureVO> selectAllList() throws Exception {
		return sqlSession.selectList(Namespace + "selectAllList");
	}
	
	@Override
	public LectureVO selectLectureOne(int id) throws Exception {
		return sqlSession.selectOne(Namespace + "selectLectureOne", id);
	}

	@Override
	public int insertApplicant(ApplicantVO vo) throws Exception {
		return sqlSession.insert(Namespace + "insertApplicant", vo);
	}
	
	@Override
	public int insertConsultation(ConsultVO vo) throws Exception {
		return sqlSession.insert(Namespace + "insertConsultation", vo);
	}
	
	@Override
	public List<LectureVO> selectListMain(int type) throws Exception {
		return sqlSession.selectList(Namespace + "selectListMain", type);
	}
	
}
