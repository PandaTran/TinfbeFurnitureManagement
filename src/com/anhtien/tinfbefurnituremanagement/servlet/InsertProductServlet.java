package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anhtien.tinfbefurnituremanagement.service.ProductService;
import com.anhtien.tinfbefurnituremanagement.utils.FileUtil;

@WebServlet("/insertProduct")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, 
maxFileSize = 1024 * 1024 * 50, 
maxRequestSize = 1024 * 1024 * 100)
public class InsertProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InsertProductServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/administration__layout/insertProduct.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			String name = (String) request.getParameter("name");
			String description = (String) request.getParameter("description");
			Integer quantity = Integer.parseInt(request.getParameter("quantity"));
			Double price = Double.parseDouble(request.getParameter("price"));
			Integer discount = Integer.parseInt(request.getParameter("discount"));
			String fileName = FileUtil.writeFile(request);
			ProductService productService = new ProductService();
			productService.insertProduct(name, description, quantity, price, discount, fileName);
		} catch (Exception e) {
		    e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/administration");
	}

}
