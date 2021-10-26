package com.anhtien.tinfbefurnituremanagement.service;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.anhtien.tinfbefurnituremanagement.dao.OrderDAO;
import com.anhtien.tinfbefurnituremanagement.entity.Order;
import com.anhtien.tinfbefurnituremanagement.entity.User;

public class OrderService {
	
	public void insertOrder(String id,
			String username,
			String address,
			String phone,
			Integer total,
			Timestamp orderDate,
			String payment,
			User user) throws SQLException {
		Order order = new Order();
		order.setId(id);
		order.setUsername(username);
		order.setAddress(address);
		order.setPhone(phone);
		order.setTotal(total);
		order.setOrderDate(orderDate);
		order.setPayment(payment);
		order.setUser(user);
		
		OrderDAO dao = new OrderDAO();
		dao.addOrder(order);
	}
	public ArrayList<Order> showAllOrder() throws SQLException {
		OrderDAO dao = new OrderDAO();
		return dao.showAllOrder();
	}
}