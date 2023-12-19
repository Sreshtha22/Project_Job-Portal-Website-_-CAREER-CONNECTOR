package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class RegisterDao {
	public int insert(UserBean bean)
	{
		String name=bean.getName();
		String phno=bean.getPhno();
		String email=bean.getEmail();
		String pass=bean.getPass();
		String ans=bean.getAns();
		String res = bean.getResume();
		String profile = bean.getProfile();
		String website = bean.getWebsite();
		String ln_id = bean.getLn_id();
		String github = bean.getGithub();
		String address = bean.getAddress();
		String bio = bean.getBio();
		String qualification = bean.getQualification();
		String skills = bean.getSkills();
		String exp = bean.getExp();
		String projects = bean.getProjects();
		String achieve = bean.getAchieve();
		if (name == null || phno == null || email == null || pass == null || ans == null || res == null) {
			return 0;
		}
		Connection con;
		PreparedStatement pstm;
		int i=0;
		if (isEmailExists(email)) {
            return -1;
        }
		try
		{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into jobseeker values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pstm.setString(1, name);
		pstm.setString(2, phno);
		pstm.setString(3, email);
		pstm.setString(4, pass);
		pstm.setString(5, ans);
		pstm.setString(6, res);
		pstm.setString(7, profile);
		pstm.setString(8, website);
		pstm.setString(9, ln_id);
		pstm.setString(10, github);
		pstm.setString(11, address);
		pstm.setString(12, bio);
		pstm.setString(13, qualification);
		pstm.setString(14, skills);
		pstm.setString(15, exp);
		pstm.setString(16, projects);
		pstm.setString(17, achieve);
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
            pstm = con.prepareStatement("SELECT * FROM jobseeker WHERE email = ?");
            pstm.setString(1, email);
            rs = pstm.executeQuery();

            
            return rs.next();
        } catch (SQLException e) {
           
        } finally {
            
        }

        return false;
    }
}
