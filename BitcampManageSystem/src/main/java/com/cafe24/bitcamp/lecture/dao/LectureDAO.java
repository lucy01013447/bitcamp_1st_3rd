package com.cafe24.bitcamp.lecture.dao;

import java.util.List;

import com.cafe24.bitcamp.lecture.domain.ApplicantVO;
import com.cafe24.bitcamp.lecture.domain.ConsultVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.lecture.domain.PageReqVO;

public interface LectureDAO {
	public final String Namespace = "lecture.lectureMapper.";
	public List<LectureVO> selectLectureList(PageReqVO vo) throws Exception;
	public List<LectureVO> selectAllList() throws Exception;
	public int cm_totalRecord(PageReqVO vo) throws Exception;
	public LectureVO selectLectureOne(int id) throws Exception;
	
	public int insertApplicant(ApplicantVO vo) throws Exception;
	
	public int insertConsultation(ConsultVO vo) throws Exception;
	
	public List<LectureVO> selectListMain(int type) throws Exception;
}
