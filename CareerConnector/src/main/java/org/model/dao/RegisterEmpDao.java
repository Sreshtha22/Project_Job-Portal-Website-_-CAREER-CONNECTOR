package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.mis.ConnectionProvider;
import org.model.bean.UserEmpBean;

public class RegisterEmpDao {
	public int insert(UserEmpBean bean) 
	{
		String ename = bean.getEname();
		String e_email = bean.getE_email();
		String name = bean.getName();
		String type = bean.getType();
		String loc = bean.getLoc();
		String email = bean.getEmail();
		String cphn = bean.getCphn();
		String clic = bean.getClic();
		String cans = bean.getCans();
		String pass = bean.getPass();
		String desig = bean.getDesig();
		String comp_ln = bean.getComp_ln();
		String logo = bean.getLogo();
		String comp_web = bean.getComp_web();
		String domains = bean.getDomains();
		String comp_about = bean.getComp_about();
		if (ename == null || e_email == null || email == null || pass == null || cans == null || name == null || type == null || loc == null || cphn == null || clic == null) {
			return 0;
		}
		Connection con;
		PreparedStatement pstm;
		int i=0;
		if (isEmailExists(e_email)) {
            return -1;
        }
		try
		{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into employer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstm.setString(1, ename);
		pstm.setString(2, e_email);
		pstm.setString(3, name);
		pstm.setString(4, type);
		pstm.setString(5, loc);
		pstm.setString(6, email);
		pstm.setString(7, cphn);
		pstm.setString(8, clic);
		pstm.setString(9, cans);
		pstm.setString(10, pass);
		pstm.setString(11, desig);
		pstm.setString(12, comp_ln);
		pstm.setString(13, logo);
		pstm.setString(14, comp_web);
		pstm.setString(15, domains);
		pstm.setString(16, comp_about);
		i=pstm.executeUpdate();
		
	}catch(Exception e) {}
		return i;
		
	}
	
	private boolean isEmailExists(String email) {
        Connection con = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            con = ConnectionProvider.createC();
            pstm = con.prepareStatement("SELECT * FROM employer WHERE e_email = ?");
            pstm.setString(1, email);
            rs = pstm.executeQuery();

           
            return rs.next();
        } catch (SQLException e) {
            
        } finally {
            
        }

        return false;
    }
	

}
