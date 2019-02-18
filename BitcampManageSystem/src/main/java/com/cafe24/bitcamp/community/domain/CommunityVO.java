package com.cafe24.bitcamp.community.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class CommunityVO {
	private int seq;
	private String title;
	private String intro;
	private String writer;
	private String pwd;
	private Date date;
	private int hit;
	private String content;
	private String imagepath;
	private String contentimg;
	private String contentimg2;
	//파일관련 필드 추가
	private MultipartFile uploadFile;
	private String uploadfilepath;
	private String uploadfilename;
	//댓글 수 
	private int countreply;
	//공지사항 타입 추가
	private String type;
	
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCountreply() {
		return countreply;
	}
	public void setCountreply(int countreply) {
		this.countreply = countreply;
	}
	public String getUploadfilename() {
		return uploadfilename;
	}
	public void setUploadfilename(String uploadfilename) {
		this.uploadfilename = uploadfilename;
	}
	public String getUploadfilepath() {
		return uploadfilepath;
	}
	public void setUploadfilepath(String uploadfilepath) {
		this.uploadfilepath = uploadfilepath;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getContentimg() {
		return contentimg;
	}
	public void setContentimg(String contentimg) {
		this.contentimg = contentimg;
	}
	public String getContentimg2() {
		return contentimg2;
	}
	public void setContentimg2(String contentimg2) {
		this.contentimg2 = contentimg2;
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	@Override
	public String toString() {
		return "CommunityVO [seq=" + seq + ", title=" + title + ", intro=" + intro + ", writer=" + writer + ", date="
				+ date + ", hit=" + hit + ", content=" + content + ", imagepath=" + imagepath + "]";
	}
	
	
	
	
}
