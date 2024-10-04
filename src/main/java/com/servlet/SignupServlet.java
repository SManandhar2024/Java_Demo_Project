package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	
	private List<Signup> signupList=new ArrayList<Signup>();
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String gender=req.getParameter("gender");
	
	Signup signup=new Signup(username, password, gender);
	signupList.add(signup);
	
	req.setAttribute("signupList", signupList);
	req.setAttribute("message", "Signup is done successfully");
	
	req.getRequestDispatcher("signup.jsp").forward(req, resp);
	}	
}

