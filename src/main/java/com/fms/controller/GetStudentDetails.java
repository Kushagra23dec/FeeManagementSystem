package com.fms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fms.dao.FeeDao;

/**
 * Servlet implementation class GetStudentDetails
 */
@WebServlet("/GetStudentDetails")
public class GetStudentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetStudentDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
	
		String fullname =   request.getParameter("fullname");
		String rollno =   request.getParameter("rollno");
		HttpSession session = request.getSession();
	
		try {
			if(fullname.isEmpty() == true && rollno.isEmpty() == true) {
				response.sendRedirect("dashboard.jsp?IncorrectStudentDetials");
				return;
			}	
		}
		catch(Exception e) {
			return;
		}
		
		
		
		FeeDao fdao = new FeeDao();
		
		session.setAttribute("getstudentdetail", fdao.getStudentsDetail(fullname,Integer.parseInt(rollno)));
		
		if(session.getAttribute("userd") == null) {
			response.sendRedirect("index.jsp?LoginFirst");
		}
		else if(fdao.getA() == 0){
			response.sendRedirect("dashboard.jsp?NoRecordFound");
			session.removeAttribute("getstudentdetail");
		}
			else
		
		{
			response.sendRedirect("studentdetails.jsp?"+fullname);
				
		}
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
