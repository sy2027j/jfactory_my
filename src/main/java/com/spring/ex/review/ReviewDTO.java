package com.spring.ex.review;

import java.sql.Date;

public class ReviewDTO {

	private String mem_id;
	private String re_title;
	private String re_score;
	private String re_content;
	private Date re_datetime;
	private int re_count;
	private String re_file;
	private String re_subimg;
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getRe_title() {
		return re_title;
	}
	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}
	public String getRe_score() {
		return re_score;
	}
	public void setRe_score(String re_score) {
		this.re_score = re_score;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public Date getRe_datetime() {
		return re_datetime;
	}
	public void setRe_datetime(Date re_datetime) {
		this.re_datetime = re_datetime;
	}
	public int getRe_count() {
		return re_count;
	}
	public void setRe_count(int re_count) {
		this.re_count = re_count;
	}
	public String getRe_file() {
		return re_file;
	}
	public void setRe_file(String re_file) {
		this.re_file = re_file;
	}
	public String getRe_subimg() {
		return re_subimg;
	}
	public void setRe_subimg(String re_subimg) {
		this.re_subimg = re_subimg;
	}
	
	
}
