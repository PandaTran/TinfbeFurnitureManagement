package com.anhtien.tinfbefurnituremanagement.service;

import java.sql.SQLException;
import java.sql.Timestamp;

import com.anhtien.tinfbefurnituremanagement.dao.OrderDAO;
import com.anhtien.tinfbefurnituremanagement.entity.Order;

public class OrderService {
	
	public void insertOrder(String id,
			String username,
			String address,
			String phone,
			Integer total,
			Timestamp orderDate) throws SQLException {
		Order order = new Order();
		order.setId(id);
		order.setUsername(username);
		order.setAddress(address);
		order.setPhone(phone);
		order.setTotal(total);
		order.setOrderDate(orderDate);
		
		OrderDAO dao = new OrderDAO();
		dao.addOrder(order);
	}

}