package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anhtien.tinfbefurnituremanagement.entity.Product;
import com.anhtien.tinfbefurnituremanagement.service.ProductService;
import com.anhtien.tinfbefurnituremanagement.utils.FileUtil;

@WebServlet("/updateProduct")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, 
maxFileSize = 1024 * 1024 * 50, 
maxRequestSize = 1024 * 1024 * 100)
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateProductServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			ProductService productService = new ProductService();
			Product product = productService.getProduct(id);
			request.setAttribute("product", product);
		} catch (Exception e) {
			  e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = this.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/administration__layout/updateProduct.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String name = (String) request.getParameter("name");
			String description = (String) request.getParameter("description");
			Double price = Double.parseDouble(request.getParameter("price"));
			Integer quantity = Integer.parseInt(request.getParameter("quantity"));
			Integer discount = Integer.parseInt(request.getParameter("discount"));
			String fileName = FileUtil.writeFile(request);
			ProductService productService = new ProductService();
			productService.updateProduct(id, name, description, quantity, price, discount, fileName);
		} catch (Exception e) {
			  e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/administration");
	}

}
