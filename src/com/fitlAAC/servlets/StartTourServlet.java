package com.fitlAAC.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fitlAAC.apis.TestSer;

/**
 * Servlet implementation class StartTourServlet
 */
@WebServlet("/StartTourServlet")
public class StartTourServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view;
		System.out.println("Servlet Post:Inside Start Tour Servlet");
		System.out.println("Serializing inside servlet");
		TestSer test=new TestSer();
		test.testUpdate();
		System.out.println("Done serializing from servlet");
		view=request.getRequestDispatcher("student_tour/introduction.jsp");
		view.forward(request, response);
		
		
	}

}
