package com.cafe24.bitcamp.community.domain;

public class CommunityProjectVO {
	private int seq;
	private String lectitle;
	private String protitle;
	private String maintech;
	private String member;
	private String imagepath;
	private String vediopath;
	private String content;
	private int cPage;
	
	
	public int getcPage() {
		return cPage;
	}
	public void setcPage(int cPage) {
		this.cPage = cPage;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getLectitle() {
		return lectitle;
	}
	public void setLectitle(String lectitle) {
		this.lectitle = lectitle;
	}
	public String getProtitle() {
		return protitle;
	}
	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}
	public String getMaintech() {
		return maintech;
	}
	public void setMaintech(String maintech) {
		this.maintech = maintech;
	}
	public String getMember() {
		return member;
	}
	public void setMember(String member) {
		this.member = member;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public String getVediopath() {
		return vediopath;
	}
	public void setVediopath(String vediopath) {
		this.vediopath = vediopath;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "CommunityProjectVO [seq=" + seq + ", lectitle=" + lectitle + ", protitle=" + protitle + ", maintech="
				+ maintech + ", member=" + member + ", imagepath=" + imagepath + ", vediopath=" + vediopath
				+ ", content=" + content + "]";
	}
	
	
	

	
	
	
}
