package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserEmpBean;
import org.model.dao.DashEmpDao;


/**
 * Servlet implementation class Dash_Emp
 */
@WebServlet("/Dash_Emp")
public class Dash_Emp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String ename=request.getParameter("ename");
		String desig=request.getParameter("desig");
		String e_email=request.getParameter("e_email");
		String comp_ln=request.getParameter("comp_ln");
		String name=request.getParameter("cname");
		String type=request.getParameter("ctype");
		String loc=request.getParameter("clocation");
		String email=request.getParameter("cemail");
		String cphn=request.getParameter("cphone");
		String cweb=request.getParameter("comp_web");
		String domains=request.getParameter("domains");
		String comp_about=request.getParameter("comp_about");
		
		
		UserEmpBean uEmpBean= new UserEmpBean();
		uEmpBean.setEname(ename);
		uEmpBean.setDesig(desig);
		uEmpBean.setE_email(e_email);
		uEmpBean.setComp_ln(comp_ln);
		uEmpBean.setName(name);
		uEmpBean.setType(type);
		uEmpBean.setLoc(loc);
		uEmpBean.setEmail(email);
		uEmpBean.setCphn(cphn);
		uEmpBean.setComp_web(cweb);
		uEmpBean.setDomains(domains);
		uEmpBean.setComp_about(comp_about);
		
		DashEmpDao red = new DashEmpDao();
		int status = red.insert(uEmpBean);
		
		if (status != 0) {
			response.sendRedirect("Dash_EMP.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
	}
	}


