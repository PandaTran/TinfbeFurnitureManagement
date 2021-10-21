package com.anhtien.tinfbefurnituremanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.anhtien.tinfbefurnituremanagement.entity.OrderDetail;
import com.anhtien.tinfbefurnituremanagement.utils.DatabaseConnectionUtil;

public class OrderDetailDAO {
	public void addOrderDetail(OrderDetail orderDetail) throws SQLException {
		String sql = "INSERT INTO `order_detail`(`order_id`,`product_id`,`quantity`,`price`) "
				+ "VALUE (?,?,?,?);";
		
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, orderDetail.getOrderID());
		preparedStatement.setInt(2, orderDetail.getProductID());
		preparedStatement.setInt(3, orderDetail.getQuantity());
		preparedStatement.setDouble(4, orderDetail.getPrice());
		preparedStatement.executeUpdate();
	}
}
