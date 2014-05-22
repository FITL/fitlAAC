package com.fitlAAC.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SOECurriculumServlet
 */
@WebServlet("/SOECurriculumServlet")
public class SOECurriculumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SOECurriculumServlet() {
        super();
      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nav=request.getParameter("navigation");
		RequestDispatcher view;
		System.out.println("Servlet Post:Inside SOE Curriculum Servlet");
		HttpSession session = request.getSession();
		String netID=(String)session.getAttribute("NetID");
		if(nav.equals("next")) 
		{
			view=request.getRequestDispatcher("student_tour/SOEcurriculum.jsp");
			view.forward(request, response);
		}
	}

}
