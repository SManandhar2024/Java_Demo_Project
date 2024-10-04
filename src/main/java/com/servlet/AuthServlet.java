package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/auth")
public class AuthServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
	
	if ("jack".equalsIgnoreCase(username) && "jill".equalsIgnoreCase(password)) {
		req.setAttribute("message", "Ahh username and password are correct");
		}else {
			req.setAttribute("message", "Ummmm username and password are incorrect");
		}
	
	req.getRequestDispatcher("login.jsp").forward(req, resp);
	}	
}
