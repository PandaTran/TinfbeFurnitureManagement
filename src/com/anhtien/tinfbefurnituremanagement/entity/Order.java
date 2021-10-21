package com.anhtien.tinfbefurnituremanagement.entity;

import java.sql.Timestamp;

public class Order {
	private String id;
	private String username;
	private String address;
	private String phone;
	private int total;
	private Timestamp orderDate;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(String id, String username, String address, String phone, int total, Timestamp orderDate) {
		super();
		this.id = id;
		this.username = username;
		this.address = address;
		this.phone = phone;
		this.total = total;
		this.orderDate = orderDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

}