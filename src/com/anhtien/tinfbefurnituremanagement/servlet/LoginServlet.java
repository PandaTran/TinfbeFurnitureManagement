package com.anhtien.tinfbefurnituremanagement.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anhtien.tinfbefurnituremanagement.entity.User;
import com.anhtien.tinfbefurnituremanagement.service.UserService;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		UserService userService = new UserService();
		User user = new User();
		try {
			user = userService.findByUsernameAndPassword(username, password);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", user.getUsername());
			session.setAttribute("role", user.getRole());
			response.sendRedirect(request.getContextPath() + "/home");
		} else {
			request.setAttribute("errorMessage", "Username or password incorrect.");
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
			dispatcher.forward(request, response);
		}
	}

}
