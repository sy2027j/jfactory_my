package com.spring.ex.cart;

public class CartDTO {
	private String cart_id;
	private String mem_id;
	private String pd_id;
	private int pd_amount;
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
	public String getPd_id() {
		return pd_id;
	}
	public void setPd_id(String pd_id) {
		this.pd_id = pd_id;
	}
	public int getPd_amount() {
		return pd_amount;
	}
	public void setPd_amount(int pd_amount) {
		this.pd_amount = pd_amount;
	}
	
	
}
