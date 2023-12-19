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
import org.model.dao.DashJsDao;
/**
 * Servlet implementation class Dash_Js
 */
@WebServlet("/Dash_Js")
@MultipartConfig
public class Dash_Js extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part p = request.getPart("resume_name");
		String fileName = p.getSubmittedFileName();
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("name");
		String phno=request.getParameter("phnno");
		String email=request.getParameter("email");
		String web=request.getParameter("website");
		String ln=request.getParameter("ln_id");
		String git=request.getParameter("github");
		String bio=request.getParameter("bio");
		String qua=request.getParameter("qualification");
		String skills=request.getParameter("skills");
		String exp=request.getParameter("exp");
		String project=request.getParameter("project");
		String achieve=request.getParameter("achieve");
		String profile=request.getParameter("profile");
		UserBean ubean=new UserBean();
		ubean.setName(name);
		ubean.setPhno(phno);
		ubean.setEmail(email);
		ubean.setPhno(phno);
		ubean.setWebsite(web);
		ubean.setLn_id(ln);
		ubean.setGithub(git);
		ubean.setBio(bio);
		ubean.setQualification(qua);
		ubean.setSkills(skills);
		ubean.setExp(exp);
		ubean.setProjects(project);
		ubean.setAchieve(achieve);
		ubean.setProfile(profile);
		ubean.setResume(fileName);
		DashJsDao rd=new DashJsDao();
		int status=rd.insert(ubean);
		if(status!=0)
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
			response.sendRedirect("Dash_JS.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
	}
	}