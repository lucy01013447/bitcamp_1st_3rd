package com.cafe24.bitcamp.notice.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cafe24.bitcamp.notice.dao.NoticeDAO;
import com.cafe24.bitcamp.notice.domain.NewTechBoardVO;
import com.cafe24.bitcamp.util.Paging;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
    private NoticeDAO dao;
	
	@Override
	public int cm_totalRecord(Map<String, String> map) throws Exception {
		//와일드카드 삽입작업
		if(map.get("value") != null)
			map.put("value", "%"+map.get("value")+"%");
		return dao.cm_totalRecord(map);
	}
	
	@Override
	public Paging getPaging(int cPage, int totalRecord) throws Exception {
		Paging page = new Paging(8, 3);
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
		System.out.println("=====================================");
		System.out.println(page.getEndPage());
		System.out.println("=====================================");
		//endPage가 실제 totalPage보다 큰 경우에는
		//endPage를 totalPage로 변경 처리
		if (page.getEndPage() > page.getTotalPage()) {
			page.setEndPage(page.getTotalPage());
		}
		return page;
	}
	
	@Override
	public List<NewTechBoardVO> getNewTechBoardList(Map<String, String> map) throws Exception {
		//와일드카드 삽입작업
		if(map.get("value") != null)
			map.put("value", "%"+map.get("value")+"%");
		return dao.selectNewTechBoardList(map);
	}
	
	@Override
	public NewTechBoardVO selectNewTechBoardOne(int num) throws Exception {
		return dao.selectNewTechBoardOne(num);
	}
	
	@Override
	public List<NewTechBoardVO> selectListMain() throws Exception {
		return dao.selectListMain();
	}
	
}
