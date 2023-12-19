package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.PostBean;

public class PostDao {
	public int insert(PostBean bean)
	{
		String email=bean.getEmail();
		String title=bean.getTitle();
		String loc=bean.getLoc();
		String type=bean.getType();
		String jdesc = bean.getJdesc();
		String jres = bean.getJres();
		String edu = bean.getEdu();
		String exp = bean.getExp();
		String vac = bean.getVac();
		String sal = bean.getSal();
		String gen = bean.getGen();
		String app_p = bean.getApp_post();
		String app_d = bean.getApp_dead();
		String cname = bean.getCname();
		String tag = bean.getTag();
		String cdesc = bean.getCdesc();
		String logo = bean.getLogo();
		if (email == null || title == null || loc == null || type == null || jdesc == null || jres == null || edu == null || exp == null || vac == null || gen == null || app_p == null || app_d == null || cname == null || logo == null) {
			return 0;
		}
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into postjob values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstm.setString(1, email);
		pstm.setString(2, title);
		pstm.setString(3, loc);
		pstm.setString(4, type);
		pstm.setString(5, jdesc);
		pstm.setString(6, jres);
		pstm.setString(7, edu);
		pstm.setString(8, exp);
		pstm.setString(9, vac);
		pstm.setString(10, sal);
		pstm.setString(11, gen);
		pstm.setString(12, app_p);
		pstm.setString(13, app_d);
		pstm.setString(14, cname);
		pstm.setString(15, tag);
		pstm.setString(16, cdesc);
		pstm.setString(17, logo);
		i=pstm.executeUpdate();
		
	}catch(Exception e) {}
		return i;
	}
}
