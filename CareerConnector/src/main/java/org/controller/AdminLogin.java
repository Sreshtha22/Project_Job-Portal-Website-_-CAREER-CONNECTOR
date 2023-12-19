package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("aemail");
		String pass=request.getParameter("apass");
		if(email.equals("careerconnector6@gmail.com")&& pass.equals("#CareerConnector@6"))
		{
			response.sendRedirect("DASH_ADMIN.jsp");
		}
		else
		{
			response.sendRedirect("LOGIN_ADMIN.jsp?msg=invalid");
		}
	}

}
