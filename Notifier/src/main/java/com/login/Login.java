package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
  	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LoginDao loginDao = new LoginDao();
		String uname= request.getParameter("uname");
		String pass= request.getParameter("pass");
		PrintWriter out = response.getWriter();
		
	
		
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(uname);
		loginBean.setPassword(pass);
		
		if (loginDao.validate(loginBean))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("dashboard.jsp");
		
			
		}
		else 
		{
			//HttpSession session = request.getSession();
			response.sendRedirect("login.jsp");
			
		}
		
		
	
	
	}

}
