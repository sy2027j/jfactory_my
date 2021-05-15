package com.spring.ex.qna;

import java.sql.Date;

public class MemberqnaDTO {

	private String qna_id;
	private String qna_title;
	private String qna_content;
	private String qna_reply_content;
	private String mem_id;
	private int qna_secret;
	private Date qna_datetime;
	private Date qna_replay_datetime;
	private int qna_response;
	private String qna_category;
	private int qna_pin;
	public String getQna_id() {
		return qna_id;
	}
	public void setQna_id(String qna_id) {
		this.qna_id = qna_id;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_reply_content() {
		return qna_reply_content;
	}
	public void setQna_reply_content(String qna_reply_content) {
		this.qna_reply_content = qna_reply_content;
	}
	public String getmem_id() {
		return mem_id;
	}
	public void setmem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getQna_secret() {
		return qna_secret;
	}
	public void setQna_secret(int qna_secret) {
		this.qna_secret = qna_secret;
	}
	public int getQna_response() {
		return qna_response;
	}
	public void setQna_response(int qna_response) {
		this.qna_response = qna_response;
	}
	public String getQna_category() {
		return qna_category;
	}
	public void setQna_category(String qna_category) {
		this.qna_category = qna_category;
	}
	public int getQna_pin() {
		return qna_pin;
	}
	public void setQna_pin(int qna_pin) {
		this.qna_pin = qna_pin;
	}
	public Date getQna_datetime() {
		return qna_datetime;
	}
	public void setQna_datetime(Date qna_datetime) {
		this.qna_datetime = qna_datetime;
	}
	public Date getQna_replay_datetime() {
		return qna_replay_datetime;
	}
	public void setQna_replay_datetime(Date qna_replay_datetime) {
		this.qna_replay_datetime = qna_replay_datetime;
	}
	
	
}
