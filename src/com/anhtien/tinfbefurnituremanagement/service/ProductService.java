package com.anhtien.tinfbefurnituremanagement.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.anhtien.tinfbefurnituremanagement.dao.ProductDAO;
import com.anhtien.tinfbefurnituremanagement.entity.Product;

public class ProductService {
	
	ProductDAO productDAO = new ProductDAO();
	
	public ArrayList<Product> showAllProduct() throws SQLException{
		return productDAO.showAllProduct();
	}
	
	public Product getProduct(Integer productID) throws SQLException{
		return productDAO.findProductID(productID);
	}
	
	public ArrayList<Product> getDetailProduct(Integer productID) throws SQLException{
		return productDAO.getDetailProduct(productID);
	}
	
	public ArrayList<Product> showProductByCategoryId(Integer categoryID) throws SQLException{
		return productDAO.showProductByCategoryId(categoryID);
	}
	public void deleteProductById(Integer productID) throws SQLException {
		productDAO.deleteProductById(productID);
	}
	public void insertProduct(String name,
			String description,
			Integer quantity,
			Double price,
			Integer discount,
			String image) throws SQLException {
		Product product = new Product();
		product.setName(name);
		product.setDescription(description);
		product.setQuantity(quantity);
		product.setPrice(price);
		product.setDiscount(discount);
		product.setImage(image);
		
		productDAO.insertProduct(product);
	}
	
	public void updateProduct(Integer id,
			String name,
			String description,
			Integer quantity,
			Double price,
			Integer discount,
			String image) throws SQLException {
		Product product = new Product();
		product.setId(id);
		product.setName(name);
		product.setDescription(description);
		product.setQuantity(quantity);
		product.setPrice(price);
		product.setDiscount(discount);
		product.setImage(image);
		
		productDAO.updateProduct(product);
	}
}
