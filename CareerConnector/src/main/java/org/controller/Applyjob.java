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

import org.model.bean.ApplyBean;
import org.model.dao.ApplyDao;

@WebServlet("/Applyjob")
@MultipartConfig
public class Applyjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part p = request.getPart("resume");
		String fileName = p.getSubmittedFileName();
		
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		
		String name=request.getParameter("sname");
		String phn=request.getParameter("sphn");
		String email=request.getParameter("smail");
		String apos=request.getParameter("spos");
		String strtdate =request.getParameter("strtdate");
		String preview =request.getParameter("intrview");
		
		ApplyBean appBean= new ApplyBean();
		appBean.setName(name);
		appBean.setphn(phn);
		appBean.setEmail(email);
		appBean.setApos(apos);
		appBean.setStrtdate(strtdate);
		appBean.setPreview(preview);
		appBean.setResume(fileName);
		
		ApplyDao appDao= new ApplyDao();
		int status = appDao.insert(appBean);
		if(status != 0)
		{
			String path = getServletContext().getRealPath("")+"ApplyResume";
			
			File file = new File(path);
			p.write(path+File.separator+fileName);
			System.out.println(path);
			System.out.println(file);
			
			session.setAttribute("msg", "Successfully Applied to This Job!!");
			response.sendRedirect("ApplyJob.jsp");
		}
		else
		{
			pw.println("<h2>There is some issue!</h2>");
		}
		}
		
		
	}