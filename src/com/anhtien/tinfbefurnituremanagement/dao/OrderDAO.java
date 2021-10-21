package com.anhtien.tinfbefurnituremanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.anhtien.tinfbefurnituremanagement.entity.Order;
import com.anhtien.tinfbefurnituremanagement.utils.DatabaseConnectionUtil;

public class OrderDAO {
	public void addOrder(Order order) throws SQLException {
		String sql = "INSERT INTO `order`(`id`,`username`,`address`,`phone`,`total`,`order_date`) "
				+ "VALUES (?,?,?,?,?,?);";
		
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		
		preparedStatement.setString(1, order.getId());
		preparedStatement.setString(2, order.getUsername());
		preparedStatement.setString(3, order.getAddress());
		preparedStatement.setString(4, order.getPhone());
		preparedStatement.setInt(5, order.getTotal());
		preparedStatement.setTimestamp(6, order.getOrderDate());
		preparedStatement.executeUpdate();
		
	}
}
