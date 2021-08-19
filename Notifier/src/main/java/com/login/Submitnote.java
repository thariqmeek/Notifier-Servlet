package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Submitnote
 */
@WebServlet("/Submitnote")
public class Submitnote extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Submitnote() {
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
		
		String uname = request.getParameter("uname");
		String nbname = request.getParameter("nbname");		
		String name = request.getParameter("name");
		String sd = request.getParameter("sd");
		String ed = request.getParameter("ed");
		String rd = request.getParameter("rd");
		String sts = request.getParameter("sts");
		String tag = request.getParameter("tag");
		String des = request.getParameter("des");
		
		PrintWriter out=response.getWriter();
//		out.print(uname);
//		out.print(nbname);
//		out.print(name);
//		out.print(sd);
//		out.print(ed);
//		out.print(rd);
//		out.print(sts);
//		out.print(tag);
//		out.print(des);
//		
		
		notepojo note=new notepojo(uname,nbname,name,sts,tag,des,sd,ed,rd);
		
		
		
		notedao notedao= new notedao();
		String result=notedao.insert(note);
		response.getWriter().print(result);

		
		
//		try {
//		    java.util.Date date1=new SimpleDateFormat("yyyy/MM/dd").parse(sd);  	
//			out.print(date1);
//
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

	}

}
