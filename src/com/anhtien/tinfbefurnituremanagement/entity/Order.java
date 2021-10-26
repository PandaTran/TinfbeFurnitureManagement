package com.anhtien.tinfbefurnituremanagement.entity;

import java.sql.Timestamp;

public class Order {
	private String id;
	private String username;
	private String address;
	private String phone;
	private int total;
	private Timestamp orderDate;
	private String payment;
	private User user;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(String id) {
		this.id = id;
	}

	public Order(String id, String username, String address, String phone, int total, Timestamp orderDate,
			String payment, User user) {
		super();
		this.id = id;
		this.username = username;
		this.address = address;
		this.phone = phone;
		this.total = total;
		this.orderDate = orderDate;
		this.payment = payment;
		this.user = user;
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

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}