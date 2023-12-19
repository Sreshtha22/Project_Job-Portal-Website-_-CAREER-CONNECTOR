package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.ContactJsBean;
import org.model.dao.ContactJsDao;



/**
 * Servlet implementation class ContactJS
 */
@WebServlet("/ContactJS")
public class ContactJS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		String email=request.getParameter("email");
		String sub=request.getParameter("sub");
		String msg=request.getParameter("message");
		
		
		
		ContactJsBean cjbean = new ContactJsBean();
		cjbean.setEmail(email);
		cjbean.setSub(sub);
		cjbean.setMessage(msg);
		
		ContactJsDao cd = new ContactJsDao();
		int status = cd.insert(cjbean);
		if (status != 0)
		{
			session.setAttribute("msg", "Successfully Message Sent!!");
			response.sendRedirect("contact_JS.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
	}

}
