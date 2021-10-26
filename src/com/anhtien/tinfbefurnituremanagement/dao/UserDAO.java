package com.anhtien.tinfbefurnituremanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.anhtien.tinfbefurnituremanagement.entity.User;
import com.anhtien.tinfbefurnituremanagement.utils.DatabaseConnectionUtil;

public class UserDAO {

	public void insertUser(User user) throws SQLException {
		String sql = "INSERT INTO user(`username`,`password`,`role`,`fullname`) "
				+ "VALUE (?,?,?,?);";
		
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, user.getUsername());
		preparedStatement.setString(2, user.getPassword());
		preparedStatement.setString(3, user.getRole());
		preparedStatement.setString(4, user.getFullname());
		preparedStatement.executeUpdate();
	}
	
	public boolean isUsernameExists(String username) throws SQLException {
		String sql = "SELECT * FROM user WHERE `username` = '"+username+"';";
		
		Connection connection = DatabaseConnectionUtil.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()) {
			return true;
		}
		return false;
	}
	
	public User findByUsernameAndPassword(String username, String password) throws SQLException {
		String sql = "SELECT * FROM user WHERE `username` = ? AND `password` = ?";
		
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, username);
		preparedStatement.setString(2, password);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			User user = convertToUser(resultSet);
			return user;
		}
		return null;
	}
	
	public User findUserID(int userID) throws SQLException {
		String sql = "SELECT * FROM user WHERE `id` = " + userID;
		Connection connection = DatabaseConnectionUtil.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			User newUser = convertToUser(resultSet);
			return newUser;
		}
		return null;
	}
	
	private User convertToUser(ResultSet resultSet) throws SQLException {
		User user = new User();
		user.setId(resultSet.getInt("id"));
		user.setUsername(resultSet.getString("username"));
		user.setPassword(resultSet.getString("password"));
		user.setRole(resultSet.getString("role"));
		user.setFullname(resultSet.getString("fullname"));
		return user;
	}
}
