package com.anhtien.tinfbefurnituremanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.anhtien.tinfbefurnituremanagement.entity.Category;
import com.anhtien.tinfbefurnituremanagement.entity.Product;
import com.anhtien.tinfbefurnituremanagement.utils.DatabaseConnectionUtil;

public class ProductDAO {

	public ArrayList<Product> showAllProduct() throws SQLException {
		ArrayList<Product> products = new ArrayList<>();
		String sql = "SELECT * FROM product";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			Product product = convertToProduct(resultSet);
			products.add(product);
		}
		return products;
	}

	public Product findProductID(int productID) throws SQLException {
		String sql = "SELECT * FROM product WHERE `id` = " + productID;
		Connection connection = DatabaseConnectionUtil.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			Product newProduct = convertToProduct(resultSet);
			return newProduct;
		}
		return null;
	}
	
	public ArrayList<Product> getDetailProduct(int productID) throws SQLException {
		ArrayList<Product> products = new ArrayList<>();
		String sql = "SELECT * FROM product WHERE `id` = " + productID;
		Connection connection = DatabaseConnectionUtil.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			Product newProduct = convertToProduct(resultSet);
			products.add(newProduct);
		}
		return products;
	}
	
	public ArrayList<Product> showProductByCategoryId(int categoryID) throws SQLException{
		ArrayList<Product> products = new ArrayList<>();
		String sql = "SELECT * FROM product WHERE `category_id` = " + categoryID ;
		Connection connection = DatabaseConnectionUtil.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			Product newProduct = convertToProduct(resultSet);
			products.add(newProduct);
		}
		return products;
	}
	
	public void insertProduct(Product product) throws SQLException {
		String sql = "INSERT INTO product(`name`,`description`,`quantity`,`price`,`discount`,`image`) "
				+ "VALUES (?,?,?,?,?,?)";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		
		preparedStatement.setString(1, product.getName());
		preparedStatement.setString(2, product.getDescription());
		preparedStatement.setInt(3, product.getQuantity());
		preparedStatement.setDouble(4, product.getPrice());
		preparedStatement.setInt(5, product.getDiscount());
		preparedStatement.setString(6, product.getImage());

		preparedStatement.execute();
	}
	
	public void deleteProductById(int productIdToDelete) throws SQLException{
		String sql = "DELETE from `product` WHERE `id` = "+productIdToDelete+";";
		Connection connection = DatabaseConnectionUtil.getConnection();
		Statement statement = connection.createStatement();
		statement.executeUpdate(sql);
	}
	
	public void updateProduct(Product product) throws SQLException {
		String sql = "UPDATE `product` SET `name` = ?,"
				+ "`description` = ?,"
				+ "`quantity` = ?,"
				+ "`price` = ?,"
				+ "`discount` = ?,"
				+ "`image` = ? WHERE (`id` = ?)";
		Connection connection = DatabaseConnectionUtil.getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, product.getName());
		preparedStatement.setString(2, product.getDescription());
		preparedStatement.setInt(3, product.getQuantity());
		preparedStatement.setDouble(4, product.getPrice());
		preparedStatement.setInt(5, product.getDiscount());
		preparedStatement.setString(6, product.getImage());
		preparedStatement.setInt(7, product.getId());
		
		preparedStatement.execute();
	}
	
	private Product convertToProduct(ResultSet resultSet) throws SQLException {
		Product product = new Product();
		product.setId(resultSet.getInt("id"));
		product.setName(resultSet.getString("name"));
		product.setDescription(resultSet.getString("description"));
		product.setQuantity(resultSet.getInt("quantity"));
		product.setPrice(resultSet.getDouble("price"));
		product.setDiscount(resultSet.getInt("discount"));
		product.setImage(resultSet.getString("image"));
		product.setCategory(new Category(resultSet.getInt("category_id")));
		return product;
	}
}
