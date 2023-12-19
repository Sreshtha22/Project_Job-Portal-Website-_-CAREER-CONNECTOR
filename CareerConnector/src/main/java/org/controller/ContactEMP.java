package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.ContactEmpBean;
import org.model.dao.ContactEmpDao;

/**
 * Servlet implementation class ContactEMP
 */
@WebServlet("/ContactEMP")
public class ContactEMP extends HttpServlet {
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
		
		ContactEmpBean cebean = new ContactEmpBean();
		cebean.setEmail(email);
		cebean.setSub(sub);
		cebean.setMessage(msg);
		
		ContactEmpDao cd = new ContactEmpDao();
		int status = cd.insert(cebean);
		if (status != 0)
		{
			session.setAttribute("msg", "Successfully Message Sent!!");
			response.sendRedirect("contact_EMP.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
	}
}
