package com.cafe24.bitcamp.notice.domain;

public class NewTechBoardVO {
	String article_num, subject, writer, content, hit, write_date;
	
	public String getArticle_num() {
		return article_num;
	}

	public void setArticle_num(String article_num) {
		this.article_num = article_num;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	@Override
	public String toString() {
		return "NewTechBoardVO [article_num=" + article_num + ", subject=" + subject + ", writer=" + writer
				+ ", content=" + content + ", hit=" + hit + ", write_date=" + write_date + "]";
	}
	
	
}
