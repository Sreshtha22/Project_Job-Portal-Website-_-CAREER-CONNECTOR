package org.model.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import org.mis.ConnectionProvider;
import org.model.bean.UserBean;
public class DashJsDao {
	public int insert(UserBean bean)
	{
		String name=bean.getName();
		String phno=bean.getPhno();
		String email=bean.getEmail();
		
		String res = bean.getResume();
		String profile = bean.getProfile();
		String website = bean.getWebsite();
		String ln_id = bean.getLn_id();
		String github = bean.getGithub();
		String bio = bean.getBio();
		String qualification = bean.getQualification();
		String skills = bean.getSkills();
		String exp = bean.getExp();
		String projects = bean.getProjects();
		String achieve = bean.getAchieve();
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
		con=ConnectionProvider.createC();
		pstm = con.prepareStatement("UPDATE jobseeker SET profile=?, name=?, phnno=?, website=?, ln_id=?, github=?, resume_name=?, bio=?, qualification=?, skills=?, exp=?, projects=?, achieve=? WHERE email=?");
		pstm.setString(1, profile);
		pstm.setString(2, name);
		pstm.setString(3, phno);
		pstm.setString(4, website);
		pstm.setString(5, ln_id);
		pstm.setString(6, github);
		pstm.setString(7, res);
		pstm.setString(8, bio);
		pstm.setString(9, qualification);
		pstm.setString(10, skills);
		pstm.setString(11, exp);
		pstm.setString(12, projects);
		pstm.setString(13, achieve);
		pstm.setString(14, email);
		i=pstm.executeUpdate();
	}catch(Exception e) {}
		return i;
	}
}