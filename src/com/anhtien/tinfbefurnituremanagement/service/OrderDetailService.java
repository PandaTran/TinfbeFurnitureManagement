
package com.anhtien.tinfbefurnituremanagement.service;

import java.sql.SQLException;

import com.anhtien.tinfbefurnituremanagement.dao.OrderDetailDAO;
import com.anhtien.tinfbefurnituremanagement.entity.OrderDetail;

public class OrderDetailService {
	public void insertOrderDetail(String orderID, 
			Integer productID, 
			Integer quantity, 
			Double price) throws SQLException {

		OrderDetail detail = new OrderDetail();
		detail.setOrderID(orderID);
		detail.setProductID(productID);
		detail.setQuantity(quantity);
		detail.setPrice(price);
		OrderDetailDAO dao = new OrderDetailDAO();
		dao.addOrderDetail(detail);
	}
}
