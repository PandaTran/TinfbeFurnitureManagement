package com.anhtien.tinfbefurnituremanagement.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.anhtien.tinfbefurnituremanagement.dao.CategoryDAO;
import com.anhtien.tinfbefurnituremanagement.entity.Category;

public class CategoryService {
	CategoryDAO categoryDAO = new CategoryDAO();

	public ArrayList<Category> getAllCategory() throws SQLException{
		return categoryDAO.showAllCategory();
	}
	
	public ArrayList<Category> getListParentCategory() throws SQLException {
		return categoryDAO.getListParentCategory();
	}
	
	public ArrayList<Category> getListChildCategory(Integer categoryID) throws SQLException {
		return categoryDAO.getListChildCategory(categoryID);
	}
}
