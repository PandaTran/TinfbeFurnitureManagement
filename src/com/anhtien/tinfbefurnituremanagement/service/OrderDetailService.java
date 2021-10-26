package com.anhtien.tinfbefurnituremanagement.service;
import java.sql.SQLException;

import com.anhtien.tinfbefurnituremanagement.dao.OrderDetailDAO;
import com.anhtien.tinfbefurnituremanagement.entity.Order;
import com.anhtien.tinfbefurnituremanagement.entity.OrderDetail;
import com.anhtien.tinfbefurnituremanagement.entity.Product;

public class OrderDetailService{
	public void insertOrderDetail(Order order,
			Product product,
			Integer quantity,
			Double price) throws SQLException {
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setOrder(order);
		orderDetail.setProduct(product);
		orderDetail.setQuantity(quantity);
		orderDetail.setPrice(price);
		orderDetail.setStatus("NEW ORDER");
		
		OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
		orderDetailDAO.addOrderDetail(orderDetail);
	}
}