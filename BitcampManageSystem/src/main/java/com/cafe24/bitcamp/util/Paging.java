package com.cafe24.bitcamp.util;

public class Paging {
	private int nowPage = 1; //현재페이지 
	private int nowBlock = 1; //현재블록(페이지를 담는 단위)
	private int totalRecord = 0; 
	private int numPerPage = 7; // 페이지당 글 몇개 게시할 건지
	private int pagePerBlock = 5; //블록당 페이지 몇개 표시할 건지  
	private int totalPage = 0; //전체 페이지 수 
	private int totalBlock = 0; //전체 블록 수 
	
	//페이지의 시작, 끝 글번호
	private int begin = 0;
	private int end = 0;
	
	//블록의 시작, 끝 페이지번호
	private int beginPage = 0;
	private int endPage = 0;
	
	public Paging() {}

	//생성자를 통해 게시판마다 사용될 Paging클래스의 설정을 변경한다.
	public Paging(int numPerPage, int pagePerBlock) {
		this.numPerPage = numPerPage;
		this.pagePerBlock = pagePerBlock;
	}
	
	/* 전체 페이지 갯수 구하기
	   totalRecord 값을 페이지당 글의 갯수로 나누어 
	       나머지가 있으면 페이지 하나 더 추가 
	 */
	public void setTotalPage() {
		totalPage = totalRecord / numPerPage;
		if ( totalRecord % numPerPage != 0 ) totalPage++;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getNowBlock() {
		return nowBlock;
	}
	public void setNowBlock(int nowBlock) {
		this.nowBlock = nowBlock;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getNumPerPage() {
		return numPerPage;
	}
	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}
	public int getPagePerBlock() {
		return pagePerBlock;
	}
	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBeginPage() {
		return beginPage;
	}
	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
	
	
	
}
