package com.fitlAAC.servlets;
import com.fitlAAC.apis.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentLoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user=request.getParameter("user");
		String uName=request.getParameter("NetID");
	
		RequestDispatcher view;
		//AdminDAO login= new AdminDAO();
		if(user.equals("student"))
		{
			if(studentDAO.loginValidation(uName))
			{
				/*WriteFile logs=new WriteFile();
				try {
					logs.inWrite("Admin Login:"+uName);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
				 view=request.getRequestDispatcher("student_tour/studenthome.jsp");
				view.forward(request, response);
			}
			else
			{
				/*WriteFile logs=new WriteFile();
				try {
					logs.errorWrite("Error:Admin Login "+uName);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
				response.setContentType("text/html");
				PrintWriter out= response.getWriter();
				out.println("<script type=\"text/javascript\">alert(\"Wrong Username or Password!!!Enter Again!!!\");history.back();</script>");
			}
		}
		
	}
}



