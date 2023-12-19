package org.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.model.bean.UserBean;
import org.model.dao.RegisterDao;

/**
 * Servlet implementation class RegisterUser
 */
@WebServlet("/RegisterUser")
@MultipartConfig
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part p = request.getPart("resume");
		String fileName = p.getSubmittedFileName();
		
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("sname");
		String phno=request.getParameter("sphn");
		String email=request.getParameter("smail");
		String pass=request.getParameter("spass");
		String ans=request.getParameter("uanswer");
		
		UserBean ubean=new UserBean();
		ubean.setName(name);
		ubean.setPhno(phno);
		ubean.setEmail(email);
		ubean.setPass(pass);
		ubean.setAns(ans);
		ubean.setResume(fileName);
		
		RegisterDao rd=new RegisterDao();
		int status=rd.insert(ubean);
		if (status == -1)
		{
			pw.println("<h2>Email Already Exists!!!</h2>");
		}
		else if(status!=0)
		{
			if(fileName != null) {
				String path = getServletContext().getRealPath("")+"resume";
				File file = new File(path);
				try {
				    p.write(path + File.separator + fileName);
				    System.out.println(path);
				    System.out.println(file);
				} catch (IOException e) {
				    e.printStackTrace(); 
				}
				}
			response.sendRedirect("login_JS.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
		
	}

}
