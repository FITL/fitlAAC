package com.fitlAAC.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fitlAAC.apis.UpdateStudentInfo;

/**
 * Servlet implementation class UpdateVideoInfoServlet
 */
@WebServlet("/UpdateVideoInfoServlet")
public class UpdateVideoInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVideoInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String netID=(String)session.getAttribute("NetID");
		String panelNo=request.getParameter("panelNo");
		String type=request.getParameter("type");
		int pno = Integer.parseInt(panelNo);
		if(type.equals("start")){
			UpdateStudentInfo up = new UpdateStudentInfo(netID);
			up.updateStartTimeOfVideo(pno);
			//up.updateNoOfTimesVideoWatched(pno);
			//RequestDispatcher view;
			//view=request.getRequestDispatcher("student_tour/introduction.jsp");
			//view.forward(request, response);			
		}
		if(type.equals("end")){
			System.out.println("end");
			UpdateStudentInfo up = new UpdateStudentInfo(netID);
			up.updateEndTimeOfVideo(pno);
			//up.updateNoOfTimesVideoWatched(pno);
			RequestDispatcher view;
			view=request.getRequestDispatcher("student_tour/introduction.jsp");
			view.forward(request, response);			
		}
	}

}
