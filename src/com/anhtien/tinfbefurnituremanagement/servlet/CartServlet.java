package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anhtien.tinfbefurnituremanagement.entity.Item;
import com.anhtien.tinfbefurnituremanagement.service.ProductService;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			doGet_DisplayCart(request, response);
		} else {
			if (action.equalsIgnoreCase("buy")) {
				try {
					doGet_Buy(request, response);
				} catch (NumberFormatException | ServletException | IOException | SQLException e) {
					e.printStackTrace();
				}
			} else if (action.equalsIgnoreCase("remove")) {
				doGet_Remove(request, response);
			} else if (action.equalsIgnoreCase("inc")) {
				doGet_Inc(request, response);
			} else if (action.equalsIgnoreCase("dec")) {
				doGet_Dec(request, response);
			} else if (action.equalsIgnoreCase("clean")) {
				doGet_RemoveAll(request, response);
			}
		}
	}

	protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/cart.jsp").forward(request, response);
	}

	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		session.setAttribute("cartNum", cart.size());
		response.sendRedirect("cart");
		
	}

	protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, NumberFormatException, SQLException {
		ProductService productService = new ProductService();
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(productService.getProduct(Integer.parseInt(request.getParameter("id"))), 1));
			session.setAttribute("cart", cart);
			session.setAttribute("cartNum", 1);
		} else {
			@SuppressWarnings("unchecked")
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
			if (index == -1) {
				cart.add(new Item(productService.getProduct(Integer.parseInt(request.getParameter("id"))), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			int cartNum = 0;
			for(Item item : cart) {
				cartNum += item.getQuantity();
			}
			session.setAttribute("cart", cart);
			session.setAttribute("cartNum", cartNum);
		}
		response.sendRedirect("cart");
	}

	private int isExisting(int id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId() == id) {
				return i;
			}
		}
		return -1;
	}

	protected void doGet_Inc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
		int quantity = cart.get(index).getQuantity()+1;
		cart.get(index).setQuantity(quantity);
		int cartNum = 0;
		for(Item item : cart) {
			cartNum += item.getQuantity();
		}
		session.setAttribute("cart", cart);
		session.setAttribute("cartNum", cartNum);
		response.sendRedirect("cart");
		
	}
	
	protected void doGet_Dec(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExisting(Integer.parseInt(request.getParameter("id")), cart);
		int quantity = cart.get(index).getQuantity()-1;
		cart.get(index).setQuantity(quantity);
		int cartNum = 0;
		for(Item item : cart) {
			cartNum += item.getQuantity();
		}
		session.setAttribute("cart", cart);
		session.setAttribute("cartNum", cartNum);
		response.sendRedirect("cart");
	}
	
	protected void doGet_RemoveAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		cart.removeAll(cart);
		session.removeAttribute("cart");
		session.setAttribute("cartNum", cart.size());
		response.sendRedirect("cart");
	}
}
