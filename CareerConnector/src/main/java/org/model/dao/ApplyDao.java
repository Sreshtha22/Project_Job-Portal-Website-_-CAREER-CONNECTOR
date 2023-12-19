package org.model.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.ApplyBean;
public class ApplyDao {
	public int insert(ApplyBean bean)
	{
		String name=bean.getName();
		String phn=bean.getphn();
		String email=bean.getEmail();
		String apos=bean.getApos();
		String strtdate=bean.getStrtdate();
		String preview=bean.getPreview();
		String resume=bean.getResume();
		if (name == null || phn == null || email == null || apos == null || strtdate == null || preview == null || resume == null) {
			return 0;
		}
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into applyjob values(?,?,?,?,?,?,?)");
		pstm.setString(1, name);
		pstm.setString(2, phn);
		pstm.setString(3, email);
		pstm.setString(4, apos);
		pstm.setString(5, strtdate);
		pstm.setString(6, preview);
		pstm.setString(7, resume);
		i=pstm.executeUpdate();
		
	}catch(Exception e) {}
		return i;
	}
}