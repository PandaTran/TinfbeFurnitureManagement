package com.anhtien.tinfbefurnituremanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.anhtien.tinfbefurnituremanagement.entity.Order;
import com.anhtien.tinfbefurnituremanagement.entity.User;
import com.anhtien.tinfbefurnituremanagement.utils.DatabaseConnectionUtil;

public class OrderDAO {
	public void addOrder(Order order) throws SQLException {
		String sql = "INSERT INTO `order`(`id`,`username`,`address`,`phone`,`total`,`order_date`,`payment`) "
				+ "VALUES (?,?,?,?,?,?,?);";
		
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		
		preparedStatement.setString(1, order.getId());
		preparedStatement.setString(2, order.getUsername());
		preparedStatement.setString(3, order.getAddress());
		preparedStatement.setString(4, order.getPhone());
		preparedStatement.setInt(5, order.getTotal());
		preparedStatement.setTimestamp(6, order.getOrderDate());
		preparedStatement.setString(7, order.getPayment());
		preparedStatement.executeUpdate();
	}
	
	public ArrayList<Order> showAllOrder() throws SQLException {
		ArrayList<Order> orders = new ArrayList<>();
		String sql = "SELECT * FROM `order`";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			Order order = convertToOrder(resultSet);
			orders.add(order);
		}
		return orders;
	}
	private Order convertToOrder(ResultSet resultSet) throws SQLException {
		Order order = new Order();
		order.setId(resultSet.getString("id"));
		order.setUsername(resultSet.getString("username"));
		order.setAddress(resultSet.getString("address"));
		order.setPhone(resultSet.getString("phone"));
		order.setTotal(resultSet.getInt("total"));
		order.setOrderDate(resultSet.getTimestamp("order_date"));
		order.setPayment(resultSet.getString("payment"));
		order.setUser(new User(resultSet.getInt("user_id")));
		return order;
	}
}
