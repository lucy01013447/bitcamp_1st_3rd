package com.cafe24.bitcamp.lecture.domain;

public class LectureVO {
	int lec_id, type, recruit;
    String center, thumbnail_img_path, thumbnail_explain, title,
    start_date, end_date, phone_num, inner_img_path;
    
	public int getLec_id() {
		return lec_id;
	}
	public void setLec_id(int lec_id) {
		this.lec_id = lec_id;
	}
	public String getCenter() {
		return center;
	}
	public void setCenter(String center) {
		this.center = center;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getThumbnail_img_path() {
		return thumbnail_img_path;
	}
	public void setThumbnail_img_path(String thumbnail_img_path) {
		this.thumbnail_img_path = thumbnail_img_path;
	}
	public String getThumbnail_explain() {
		return thumbnail_explain;
	}
	public void setThumbnail_explain(String thumbnail_explain) {
		this.thumbnail_explain = thumbnail_explain;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getRecruit() {
		return recruit;
	}
	public void setRecruit(int recruit) {
		this.recruit = recruit;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getInner_img_path() {
		return inner_img_path;
	}
	public void setInner_img_path(String inner_img_path) {
		this.inner_img_path = inner_img_path;
	}
	
}
