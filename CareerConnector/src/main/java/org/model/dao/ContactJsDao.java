package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mis.ConnectionProvider;
import org.model.bean.ContactJsBean;

public class ContactJsDao {
	public int insert(ContactJsBean cjbean) 
	{
		String email = cjbean.getEmail();
		String sub = cjbean.getSub();
		String msg = cjbean.getMessage();
		if(email == null || sub == null || msg == null) {
			return 0;
		}
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
			con=ConnectionProvider.createC();
			int currentCount = getCurrentQueryCount(con);
			pstm=con.prepareStatement("insert into contact values(?,?,?,?,?)");
			pstm.setInt(1, currentCount + 1);
			pstm.setString(2, email);
			pstm.setString(3, sub);
			pstm.setString(4, msg);
			pstm.setString(5, "no");
		
		i=pstm.executeUpdate();
		
	}catch(Exception e) {}
		return i;
		
	}
	
	private int getCurrentQueryCount(Connection con) {
        int currentCount = 0;
        try {
            PreparedStatement countStatement = con.prepareStatement("SELECT MAX(query_number) FROM contact");
            ResultSet resultSet = countStatement.executeQuery();

            if (resultSet.next()) {
                currentCount = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        return currentCount;
    }
}
