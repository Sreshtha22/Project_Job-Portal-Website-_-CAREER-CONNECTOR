package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.UserEmpBean;

public class DashEmpDao {
	public int insert(UserEmpBean bean) {
        String ename = bean.getEname();
        String e_email = bean.getE_email();
        String name = bean.getName();
        String type = bean.getType();
        String loc = bean.getLoc();
        String email = bean.getEmail();
        String cphn = bean.getCphn();

        String desig = bean.getDesig();
        String comp_ln = bean.getComp_ln();

        String comp_web = bean.getComp_web();
        String domains = bean.getDomains();
        String comp_about = bean.getComp_about();
        

        Connection con = null;
        PreparedStatement pstm = null;
        int i = 0;

        try {
            con = ConnectionProvider.createC();
            pstm=con.prepareStatement("UPDATE employer SET ename=?,cname=?,ctype=?,clocation=?,cemail=?,cphone=?,desig=?,comp_ln=?,comp_web=?,domains=?,comp_about=? WHERE e_email=?");
            pstm.setString(1, ename);
            pstm.setString(2, name);     
            pstm.setString(3, type);      
            pstm.setString(4, loc);
            pstm.setString(5, email);
            pstm.setString(6, cphn);
            pstm.setString(7, desig);
            pstm.setString(8, comp_ln);
            pstm.setString(9, comp_web);
            pstm.setString(10, domains);
            pstm.setString(11, comp_about);
            pstm.setString(12, e_email);
            i = pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); 
        } finally {
            
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace(); 
            }
        }
        return i;
    }
}
