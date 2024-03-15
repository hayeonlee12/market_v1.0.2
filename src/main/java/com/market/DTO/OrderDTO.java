package com.market.DTO;

public class OrderDTO {
	private String oderid;
	private String userid;
	private String productid;
	private String payment;
	private String orderdate;
	
	public String getOderid() {
		return oderid;
	}
	public void setOderid(String oderid) {
		this.oderid = oderid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	
}
