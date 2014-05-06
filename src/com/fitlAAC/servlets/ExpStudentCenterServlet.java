package com.fitlAAC.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExpStudentCenterServlet
 */
@WebServlet("/ExpStudentCenterServlet")
public class ExpStudentCenterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExpStudentCenterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nav=request.getParameter("navigation");
		RequestDispatcher view;
		System.out.println("Servlet Post:Inside Exploring Student Center Servlet");
		
		if(nav.equals("next")) 
		{
			view=request.getRequestDispatcher("student_tour/expStudentCenter.jsp");
			view.forward(request, response);
		}
	}

}
