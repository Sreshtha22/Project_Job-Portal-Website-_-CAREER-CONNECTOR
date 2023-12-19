package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.UserBean;
import org.model.bean.UserEmpBean;
import org.model.dao.LOGIN_JSDao;
/**
 * Servlet implementation class LOGIN_EMP
 */
@WebServlet("/LOGIN_JS")
public class LOGIN_JS extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * Default constructor. 
     */
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String smail=request.getParameter("smail");
		String spass=request.getParameter("spass");
		HttpSession session = request.getSession();
		UserBean uBean = new UserBean();
		uBean.setEmail(smail);
		uBean.setPass(spass);
		LOGIN_JSDao ljd = new LOGIN_JSDao();
		boolean status = ljd.login(uBean);
		if(status) 
		{

			session.setAttribute("Email : ", smail);

			response.sendRedirect("index_JS.jsp");
		}
		else 
		{
			response.sendRedirect("login_JS.jsp?msg=invalid");
		}
	}
	}