package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anhtien.tinfbefurnituremanagement.entity.Item;
import com.anhtien.tinfbefurnituremanagement.service.ProductService;

@WebServlet("/wishlist")
public class WishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WishlistServlet() {

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			doGet_DisplayWishlist(request, response);
		} else {
			if (action.equalsIgnoreCase("add")) {
				try {
					doGet_AddToWishlist(request, response);
				} catch (NumberFormatException | ServletException | IOException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (action.equalsIgnoreCase("remove")) {
				doGet_Remove(request, response);
			}
		}
	}
	
	protected void doGet_DisplayWishlist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/wishlist.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Item> wishlist = (List<Item>) session.getAttribute("wishlist");
		int index = isExisting(Integer.parseInt(request.getParameter("id")), wishlist);
		wishlist.remove(index);
		session.setAttribute("wishlist", wishlist);
		response.sendRedirect("wishlist");
	}
	
	protected void doGet_AddToWishlist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, NumberFormatException, SQLException {
		ProductService productService = new ProductService();
		HttpSession session = request.getSession();
		if (session.getAttribute("wishlist") == null) {
			List<Item> wishlist = new ArrayList<Item>();
			wishlist.add(new Item(productService.getProduct(Integer.parseInt(request.getParameter("id"))), 1));
			session.setAttribute("wishlist", wishlist);
		} else {
			@SuppressWarnings("unchecked")
			List<Item> wishlist = (List<Item>) session.getAttribute("wishlist");
			int index = isExisting(Integer.parseInt(request.getParameter("id")), wishlist);
			if (index == -1) {
				wishlist.add(new Item(productService.getProduct(Integer.parseInt(request.getParameter("id"))), 1));
			} else {
				int quantity = wishlist.get(index).getQuantity() + 1;
				wishlist.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", wishlist);
		}
		response.sendRedirect("wishlist");
	}
	
	private int isExisting(int id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId() == id) {
				return i;
			}
		}
		return -1;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
