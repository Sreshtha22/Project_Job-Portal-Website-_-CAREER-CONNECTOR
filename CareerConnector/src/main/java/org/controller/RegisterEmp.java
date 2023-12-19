package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserEmpBean;
import org.model.dao.RegisterEmpDao;

/**
 * Servlet implementation class RegisterEmp
 */
@WebServlet("/RegisterEmp")
public class RegisterEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterEmp() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String ename=request.getParameter("ename");
		String e_email=request.getParameter("email");
		String name=request.getParameter("cname");
		String type=request.getParameter("ctype");
		String loc=request.getParameter("cloc");
		String email=request.getParameter("cmail");
		String cphn=request.getParameter("cphn");
		String clic=request.getParameter("clic");
		String cans=request.getParameter("uanswer");
		String pass=request.getParameter("cpass");
		
		UserEmpBean uEmpBean= new UserEmpBean();
		uEmpBean.setEname(ename);
		uEmpBean.setE_email(e_email);
		uEmpBean.setName(name);
		uEmpBean.setType(type);
		uEmpBean.setLoc(loc);
		uEmpBean.setEmail(email);
		uEmpBean.setCphn(cphn);
		uEmpBean.setClic(clic);
		uEmpBean.setCans(cans);
		uEmpBean.setPass(pass);
		
		RegisterEmpDao red = new RegisterEmpDao();
		int status = red.insert(uEmpBean);
		if (status == -1)
		{
			pw.println("<h2>Email Already Exists!!!</h2>");
		}
		else if (status != 0) {
			pw.println("<h2>Successfully Registered!!!</h2>");
			response.sendRedirect("login_EMP.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
	}

}
