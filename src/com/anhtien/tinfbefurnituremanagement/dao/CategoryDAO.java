package com.anhtien.tinfbefurnituremanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
  
import com.anhtien.tinfbefurnituremanagement.entity.Category;
import com.anhtien.tinfbefurnituremanagement.utils.DatabaseConnectionUtil;

public class CategoryDAO {
	
	public ArrayList<Category> showAllCategory() throws SQLException{
		ArrayList<Category> categories = new ArrayList<>();
		String sql = "SELECT * FROM category";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			Category category = convertToCategory(resultSet);
			categories.add(category);
		}
		return categories;
	}
	
	public ArrayList<Category> getListParentCategory() throws SQLException{
		ArrayList<Category> categories = new ArrayList<>();
		String sql = "SELECT * FROM category WHERE `parent` = 0;";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			Category category = convertToCategory(resultSet);
			categories.add(category);
		}
		return categories;
	}
	
	public ArrayList<Category> getListChildCategory(int categoryID) throws SQLException{
		ArrayList<Category> categories = new ArrayList<>();
		String sql = "SELECT * FROM category WHERE `parent` = "+categoryID+";";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			Category category = convertToCategory(resultSet);
			categories.add(category);
		}
		return categories;
	}
	
	private Category convertToCategory(ResultSet resultSet) throws SQLException {
		Category category = new Category();
		category.setId(resultSet.getInt("id"));
		category.setName(resultSet.getString("name"));
		category.setParent(resultSet.getInt("parent"));
		return category;
	}
}
