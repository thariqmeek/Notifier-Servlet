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
 * Servlet implementation class Submitnb
 */
@WebServlet("/Submitnb")
public class Submitnb extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	String uname=(String) session.getAttribute("username");
//	session.getAttribute("username");
	
    /**
     * Default constructor. 
     */
    public Submitnb() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter output = response.getWriter();
		String uname = request.getParameter("uname");
		output.println(uname);

		String noteb = request.getParameter("noteb");
		output.println(noteb);
		
		savenb member = new savenb(uname, noteb);
		
		nbdao nbdao = new nbdao();
		String result = nbdao.insert(member);
		
		response.sendRedirect("notebooks.jsp");


		
		
		
		
		
		
	}

}
