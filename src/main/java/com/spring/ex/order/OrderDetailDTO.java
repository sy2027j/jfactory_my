package com.spring.ex.order;

import java.sql.Date;

public class OrderDetailDTO {
	
	private int cart_id;
	private String mem_id;
	private int pd_no;
	private int pd_amount;
	private Date cart_datetime;
	private String pd_img;
	private int pd_price;
	private String pd_name;
	private String or_id;
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getPd_no() {
		return pd_no;
	}
	public void setPd_no(int pd_no) {
		this.pd_no = pd_no;
	}
	public int getPd_amount() {
		return pd_amount;
	}
	public void setPd_amount(int pd_amount) {
		this.pd_amount = pd_amount;
	}
	public Date getCart_datetime() {
		return cart_datetime;
	}
	public void setCart_datetime(Date cart_datetime) {
		this.cart_datetime = cart_datetime;
	}
	public String getPd_img() {
		return pd_img;
	}
	public void setPd_img(String pd_img) {
		this.pd_img = pd_img;
	}
	public int getPd_price() {
		return pd_price;
	}
	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}
	public String getPd_name() {
		return pd_name;
	}
	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}
	public String getOr_id() {
		return or_id;
	}
	public void setOr_id(String or_id) {
		this.or_id = or_id;
	}
	
}
