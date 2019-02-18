package com.cafe24.bitcamp.lecture.service;

import java.util.List;

import com.cafe24.bitcamp.lecture.domain.ApplicantVO;
import com.cafe24.bitcamp.lecture.domain.ConsultVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.lecture.domain.PageReqVO;
import com.cafe24.bitcamp.util.Paging;

public interface LectureService {
	public List<LectureVO> selectLectureList(PageReqVO vo) throws Exception;
	public List<LectureVO> selectAllList() throws Exception;
	public int cm_totalRecord(PageReqVO vo) throws Exception;
	public Paging getPaging(int cPage, int totalRecord) throws Exception;
	public LectureVO selectLectureOne(int id) throws Exception;
	
	public int addApplicant(ApplicantVO vo) throws Exception;
	public int addConsultation(ConsultVO vo) throws Exception;
	
	public List<LectureVO> selectListMain(int type) throws Exception;
}
