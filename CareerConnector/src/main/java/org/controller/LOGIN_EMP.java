package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.UserEmpBean;
import org.model.dao.LOGIN_EMPDao;

/**
 * Servlet implementation class LOGIN_EMP
 */
@WebServlet("/LOGIN_EMP")
public class LOGIN_EMP extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LOGIN_EMP() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pass=request.getParameter("cpass");
		HttpSession session = request.getSession();
		UserEmpBean uEmpBean = new UserEmpBean();
		uEmpBean.setEmail(email);
		uEmpBean.setPass(pass);
		LOGIN_EMPDao lmd = new LOGIN_EMPDao();
		boolean status = lmd.login(uEmpBean);
		if(status) 
		{
//			UserEmpBean profile = lmd.getProfile(email);
			session.setAttribute("Email : ", email);
//			session.setAttribute("Profile", profile);
			response.sendRedirect("index_EMP.jsp");
		}
		else 
		{
			response.sendRedirect(("login_EMP.jsp?msg=invalid"));
		}
	}
	}