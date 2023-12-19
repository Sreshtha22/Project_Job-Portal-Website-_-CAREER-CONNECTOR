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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.model.bean.PostBean;
import org.model.dao.PostDao;

/**
 * Servlet implementation class PostJob
 */
@WebServlet("/PostJob")
@MultipartConfig
public class PostJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part p = request.getPart("logo");
		String fileName = p.getSubmittedFileName();
		
		
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		HttpSession session = request.getSession();
		
		String email=request.getParameter("email");
		String title=request.getParameter("title");
		String loc=request.getParameter("loc");
		String type=request.getParameter("type");
		String jdesc=request.getParameter("desc");
		String jres=request.getParameter("res");
		String edu=request.getParameter("edu");
		String exp=request.getParameter("exp");
		String vac=request.getParameter("vacy");
		String sal=request.getParameter("sal");
		String gen=request.getParameter("gen");
		String post=request.getParameter("post");
		String app_dead=request.getParameter("dead");
		String cname=request.getParameter("cname");
		String tag=request.getParameter("ctag");
		String cdesc=request.getParameter("cdesc");
		
		PostBean pbean = new PostBean();
		pbean.setEmail(email);
		pbean.setTitle(title);
		pbean.setLoc(loc);
		pbean.setType(type);
		pbean.setJdesc(jdesc);
		pbean.setJres(jres);
		pbean.setEdu(edu);
		pbean.setExp(exp);
		pbean.setVac(vac);
		pbean.setSal(sal);
		pbean.setGen(gen);
		pbean.setApp_post(post);
		pbean.setApp_dead(app_dead);
		pbean.setCname(cname);
		pbean.setTag(tag);
		pbean.setCdesc(cdesc);
		pbean.setLogo(fileName);
		
		PostDao pd = new PostDao();
		int status=pd.insert(pbean);
		if(status!=0)
		{
			String path = getServletContext().getRealPath("")+"Upload_logos";
			
			File file = new File(path);
			p.write(path+File.separator+fileName);
			System.out.println(path);
			System.out.println(file);
			
			session.setAttribute("msg", "Successfully Job Posted!!");
			response.sendRedirect("postjob_EMP.jsp");
		
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
	}

}
