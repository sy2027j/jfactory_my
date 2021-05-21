package com.spring.ex.review;

import java.sql.Date;

public class ReviewDTO {

	private String mem_id;
	private String re_title;
	private String re_score;
	private String re_content;
	private Date re_datetime;
	private int re_count;
	private String re_org_file;
	private String re_stored_file;
	private int re_no;
	private String pd_name;
	
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
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public String getPd_name() {
		return pd_name;
	}
	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}
	public String getRe_org_file() {
		return re_org_file;
	}
	public void setRe_org_file(String re_org_file) {
		this.re_org_file = re_org_file;
	}
	public String getRe_stored_file() {
		return re_stored_file;
	}
	public void setRe_stored_file(String re_stored_file) {
		this.re_stored_file = re_stored_file;
	}
	
	
}
