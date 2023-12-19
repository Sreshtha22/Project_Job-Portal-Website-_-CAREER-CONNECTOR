package org.model.dao;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.mis.ConnectionProvider;
import org.model.bean.UserEmpBean;

public class LOGIN_EMPDao 
{
public boolean login(UserEmpBean bean) 
{
	String email = bean.getEmail();
	String pass = bean.getPass();
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	boolean status = false;
	try 
	{
	con = ConnectionProvider.createC();
	pstm = con.prepareStatement("select * from employer where e_email = ? and cpass = ?");
	pstm.setString(1, email);
	pstm.setString(2, pass);
	rs = pstm.executeQuery();
	status = rs.next();
	}
	catch(Exception e) {}
	return status;
}

}