package com.cafe24.bitcamp.community.service;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.cafe24.bitcamp.community.dao.CommunityDAO;
import com.cafe24.bitcamp.community.domain.CommunityProjectVO;
import com.cafe24.bitcamp.community.domain.CommunityVO;
import com.cafe24.bitcamp.community.domain.ReplyVO;
import com.cafe24.bitcamp.util.Paging;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Inject
	private CommunityDAO dao;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	//교육후기
	@Override
	public List<CommunityVO> selectList(Map<String, Integer> map) throws Exception {
		return dao.selectList(map);
	}
	
	@Override
	public CommunityVO selectOne(int seq) throws Exception {
		return dao.selectOne(seq);
	}
	
	@Override
	public int totalRecord() throws Exception {
		return dao.totalRecord();
	}
	//조회수증가
	public void addHitLec(int seq) throws Exception {
		dao.addHitLec(seq);
	}

	//자유게시판
	@Override
	public List<CommunityVO> selectFree(Map<String, Integer> map) throws Exception {
		return dao.selectFree(map);
	}

	@Override
	public CommunityVO selectOneFree(int seq) throws Exception {
		return dao.selectOneFree(seq);
	}

	@Override
	public int totalRecordFree() throws Exception {
		return dao.totalRecordFree();
	}
	
	@Override
	public void insertFree(CommunityVO vo) throws Exception {
		dao.insertFree(vo);
	}
	
	@Override
	public void updateFree(CommunityVO vo) throws Exception {
		dao.updateFree(vo);
	}
	
	@Override
	public void deleteFree(int seq) throws Exception {
		dao.deleteFree(seq);
	}
	//다음글보기 버튼 표시 여부 
	@Override
	public int minSeq() throws Exception {
		return dao.minSeq();
	}
	//조회수 증가
	public void addHitFree(int seq) throws Exception {
		dao.addHitFree(seq);
	}
	

	//프로젝트 게시판
	@Override
	public List<CommunityProjectVO> selectProject(Map<String, Integer> map) throws Exception {
		return dao.selectProject(map);
	}

	@Override
	public CommunityProjectVO selectOnePro(int seq) throws Exception {
		return dao.selectOnePro(seq);
	}

	@Override
	public int totalRecordPro() throws Exception {
		return dao.totalRecordPro();
	}
	@Override
	public List<CommunityProjectVO> selectProMain() throws Exception {
		return dao.selectProMain();
	}
	
	//공지사항페이지
	@Override
	public List<CommunityVO> selectNotice(Map<String, Integer> map) throws Exception {
		return dao.selectNotice(map);
	}

	@Override
	public CommunityVO selectOneNotice(int seq) throws Exception {
		return dao.selectOneNotice(seq);
	}

	@Override
	public int totalRecordNotice() throws Exception {
		return dao.totalRecordNotice();
	}

	@Override
	public void insertNotice(CommunityVO vo) throws Exception {
		dao.insertNotice(vo);
	}

	@Override
	public void updateNotice(CommunityVO vo) throws Exception {
		dao.updateNotice(vo);
	}

	@Override
	public void deleteNotice(int seq) throws Exception {
		dao.deleteNotice(seq);
	}

	@Override
	public int minSeqNotice() throws Exception {
		return dao.minSeqNotice();
	}

	@Override
	public void addHitNotice(int seq) throws Exception {
		dao.addHitNotice(seq);
	}

	@Override
	public List<CommunityVO> selectNoticeMain() throws Exception {
		return dao.selectNoticeMain();
	}
	
	//페이징처리
	@Override
	public Paging getPaging(int cPage, int totalRecord, int numPerPage, int pagePerBlock) throws Exception {
		Paging page = new Paging(numPerPage, pagePerBlock);
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
	
	
	//댓글
	@Override
	public int countReply(Map<String, Integer> map) throws Exception {
		return dao.countReply(map);
	}
	
	@Override
	public List<ReplyVO> selectReply(Map<String, Integer> map) throws Exception {
		return dao.selectReply(map);
	}
	
	@Override
	public void insertReply(ReplyVO reply) throws Exception {
		dao.insertReply(reply);
	}
	
	@Override
	public void updateReply(ReplyVO reply) throws Exception {
		dao.updateReply(reply);
	}
	
	@Override
	public void deleteReply(int r_seq) throws Exception {
		dao.deleteReply(r_seq);
	}

}

