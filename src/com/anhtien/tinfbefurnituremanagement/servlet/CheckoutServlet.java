package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anhtien.tinfbefurnituremanagement.entity.Item;
import com.anhtien.tinfbefurnituremanagement.entity.Order;
import com.anhtien.tinfbefurnituremanagement.entity.Product;
import com.anhtien.tinfbefurnituremanagement.entity.User;
import com.anhtien.tinfbefurnituremanagement.service.OrderDetailService;
import com.anhtien.tinfbefurnituremanagement.service.OrderService;
import com.anhtien.tinfbefurnituremanagement.service.UserService;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderService orderService = new OrderService();
	OrderDetailService orderDetailService = new OrderDetailService();
	User user = new User();
	public CheckoutServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/checkout.jsp");
		dispatcher.forward(request, response);
	}

	@SuppressWarnings({ "unchecked", "unused" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		try {
			Timestamp orderDate = new Timestamp(new Date().getTime());
			String username = request.getParameter("username");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String payment = request.getParameter("payment");
			String orderID = "" + orderDate.getTime();
			int total = 0;
			int pay = 0;
			int vat = 0;
			UserService service = new UserService();
			service.findByUsernameAndPassword(request.getParameter("username"), 
					request.getParameter("password"));
			if(service == null) {
				request.setAttribute("errorMessage", "Account's invalid");
				request.getRequestDispatcher("/WEB-INF/views/checkout.jsp").forward(request, response);
			} else {
			for(Item item : cart) {
				total += item.getQuantity() * item.getProduct().getPrice();
				vat = (int) (total * 0.1);
				pay = total + vat; 
				Order order = new Order("ORDER".concat(orderID), username, address, phone, pay, orderDate, payment, user);
				orderService.insertOrder("ORDER".concat(orderID), username, address, phone, pay, orderDate, payment, user);
				orderDetailService.insertOrderDetail(new Order(order.getId()), 
						new Product(item.getProduct().getId()), 
						item.getQuantity(), item.getProduct().getPrice());
			}
			}
			}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("cart", cart);
		response.sendRedirect(request.getContextPath() + "/home");
		session.setAttribute("cartNum", 0);
		session.removeAttribute("cart");
	}

}
