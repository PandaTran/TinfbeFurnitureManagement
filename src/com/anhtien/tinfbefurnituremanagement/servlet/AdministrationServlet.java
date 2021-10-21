package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anhtien.tinfbefurnituremanagement.dao.CategoryDAO;
import com.anhtien.tinfbefurnituremanagement.entity.Category;
import com.anhtien.tinfbefurnituremanagement.entity.Product;
import com.anhtien.tinfbefurnituremanagement.service.ProductService;

@WebServlet("/administration")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, 
maxFileSize = 1024 * 1024 * 50, 
maxRequestSize = 1024 * 1024 * 100)
public class AdministrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdministrationServlet() {

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			if(action == null) {
				show(request, response);
			} else if (action.equalsIgnoreCase("deleteProduct")) {
				deleteProduct(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	protected void show(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
			ArrayList<Product> products = new ProductService().showAllProduct();
			ArrayList<Category> categories = new CategoryDAO().showAllCategory();
			request.setAttribute("product", products);
			request.setAttribute("category", categories);
		request.getRequestDispatcher("/WEB-INF/views/administration__layout/administration.jsp").forward(request, response);
	}

	protected void deleteProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		ProductService productService = new ProductService();
		try {
			productService.deleteProductById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/administration");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
