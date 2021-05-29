package com.spring.ex.cart;

import java.sql.Date;

public class CartDTO {
	private String cart_id;
	private String mem_id;
	private String pd_name;
	private int pd_amount;
	private Date cart_datetime;
	private String pd_img;
	private int pd_price;
	
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPd_name() {
		return pd_name;
	}
	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
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
	
	
}
