package com.spring.ex.order;

import java.sql.Date;

public class OrderDTO {
	
	private String or_id;
	private String mem_id;
	private String buy_realname;
	private int buy_zipcode;
	private String buy_address1;
	private String buy_address2;
	private String buy_phone;
	private int or_price;
	private int or_cancel_state;
	private Date or_datetime;
	private int re_check;
	public String getOr_id() {
		return or_id;
	}
	public void setOr_id(String or_id) {
		this.or_id = or_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getBuy_realname() {
		return buy_realname;
	}
	public void setBuy_realname(String buy_realname) {
		this.buy_realname = buy_realname;
	}
	public int getBuy_zipcode() {
		return buy_zipcode;
	}
	public void setBuy_zipcode(int buy_zipcode) {
		this.buy_zipcode = buy_zipcode;
	}
	public String getBuy_address1() {
		return buy_address1;
	}
	public void setBuy_address1(String buy_address1) {
		this.buy_address1 = buy_address1;
	}
	public String getBuy_address2() {
		return buy_address2;
	}
	public void setBuy_address2(String buy_address2) {
		this.buy_address2 = buy_address2;
	}
	public String getBuy_phone() {
		return buy_phone;
	}
	public void setBuy_phone(String buy_phone) {
		this.buy_phone = buy_phone;
	}
	public int getOr_price() {
		return or_price;
	}
	public void setOr_price(int or_price) {
		this.or_price = or_price;
	}
	public int getOr_cancel_state() {
		return or_cancel_state;
	}
	public void setOr_cancel_state(int or_cancel_state) {
		this.or_cancel_state = or_cancel_state;
	}
	public Date getOr_datetime() {
		return or_datetime;
	}
	public void setOr_datetime(Date or_datetime) {
		this.or_datetime = or_datetime;
	}
	public int getRe_check() {
		return re_check;
	}
	public void setRe_check(int re_check) {
		this.re_check = re_check;
	}
	
	
}
