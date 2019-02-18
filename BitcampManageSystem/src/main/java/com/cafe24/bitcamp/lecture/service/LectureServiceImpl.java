package com.cafe24.bitcamp.lecture.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cafe24.bitcamp.lecture.dao.LectureDAO;
import com.cafe24.bitcamp.lecture.domain.ApplicantVO;
import com.cafe24.bitcamp.lecture.domain.ConsultVO;
import com.cafe24.bitcamp.lecture.domain.LectureVO;
import com.cafe24.bitcamp.lecture.domain.PageReqVO;
import com.cafe24.bitcamp.util.Paging;

@Service
public class LectureServiceImpl implements LectureService {

	@Inject
	private LectureDAO dao;
	
	@Override
	public List<LectureVO> selectLectureList(PageReqVO vo) throws Exception {
		List<LectureVO> lecList = dao.selectLectureList(vo);
		for(int i=0; i<lecList.size(); i++){
			String element = lecList.get(i).getCenter();
			//지점명 변경작업
			switch (element) {
			case "sch":
				lecList.get(i).setCenter("서초본점");
				break;
			case "sc":
				lecList.get(i).setCenter("신촌지점");
				break;
			case "gn":
				lecList.get(i).setCenter("강남지점");
				break;
			case "cr":
				lecList.get(i).setCenter("종로지점");
				break;
			}
		}
		return lecList;
	}
	
	@Override
	public LectureVO selectLectureOne(int id) throws Exception {
		LectureVO lec = dao.selectLectureOne(id);
		String element = lec.getCenter();
		//지점명 변경작업
		switch (element) {
		case "sch":
			lec.setCenter("서초본점");
			break;
		case "sc":
			lec.setCenter("신촌지점");
			break;
		case "gn":
			lec.setCenter("강남지점");
			break;
		case "cr":
			lec.setCenter("종로지점");
			break;
		}
		return lec;
	}
	
	@Override
	public List<LectureVO> selectAllList() throws Exception {
		return dao.selectAllList();
	}

	@Override
	public int cm_totalRecord(PageReqVO vo) throws Exception {
		return dao.cm_totalRecord(vo);
	}

	@Override
	public Paging getPaging(int cPage, int totalRecord) throws Exception {
		Paging page = new Paging(3, 3);
		//전체게시물의 갯수
		page.setTotalRecord(totalRecord);
		//전체페이지 수
		page.setTotalPage();
		page.setNowPage(cPage);
		//현재페이지의 시작번호와 끝번호
		page.setBegin((page.getNowPage()-1) * page.getNumPerPage()+1);
		page.setEnd(page.getBegin() + page.getNumPerPage() -1);
		//블록의 시작번호와 끝번호
		page.setBeginPage((int)((page.getNowPage()-1) / page.getPagePerBlock()) * page.getPagePerBlock() +1 );
		page.setEndPage(page.getBeginPage() + page.getPagePerBlock() - 1);
		//endPage가 실제 totalPage보다 큰 경우에는
		//endPage를 totalPage로 변경 처리
		if (page.getEndPage() > page.getTotalPage()) {
			page.setEndPage(page.getTotalPage());
		}
		return page;
	}
	
	
	@Override
	public int addApplicant(ApplicantVO vo) throws Exception {
		return dao.insertApplicant(vo);
	}
	
	
	@Override
	public int addConsultation(ConsultVO vo) throws Exception {
		return dao.insertConsultation(vo);
	}
	
	@Override
	public List<LectureVO> selectListMain(int type) throws Exception {
		List<LectureVO> lecList = dao.selectListMain(type);
		for(int i=0; i<lecList.size(); i++){
			String element = lecList.get(i).getCenter();
			//지점명 변경작업
			switch (element) {
			case "sch":
				lecList.get(i).setCenter("서초본점");
				break;
			case "sc":
				lecList.get(i).setCenter("신촌지점");
				break;
			case "gn":
				lecList.get(i).setCenter("강남지점");
				break;
			case "cr":
				lecList.get(i).setCenter("종로지점");
				break;
			}
		}
		return lecList;
	}

}
