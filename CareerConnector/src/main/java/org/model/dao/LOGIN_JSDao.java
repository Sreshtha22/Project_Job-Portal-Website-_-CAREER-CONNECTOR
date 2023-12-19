package org.model.dao;
import java.sql.*;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;
import org.model.bean.UserEmpBean;

public class LOGIN_JSDao {
		public boolean login(UserBean bean)
		{
			String smail=bean.getEmail();
			String spass=bean.getPass();
			Connection con;
			PreparedStatement pstm;
			ResultSet rs;
			boolean status=false;
			try
			{
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("select *from jobseeker where email=? and pass=?");
			pstm.setString(1,smail);
			pstm.setString(2,spass);
			rs=pstm.executeQuery();
			status=rs.next();
			}
			catch(Exception e) {}
			return status;
}

}