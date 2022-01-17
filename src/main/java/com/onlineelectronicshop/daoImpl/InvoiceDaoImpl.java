package com.onlineelectronicshop.daoImpl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineelectronicshop.model.User;
import com.onlineelectronicshop.util.ConnectionUtil;

public class InvoiceDaoImpl {
	public ResultSet showBill(User user) {
		
		String showQuery = "select u.user_name,u.contact_number,u.email_id,u.address,o.component_id,o.quantity,o.total_price,o.order_date from user_details u join orders_table o on u.user_id=o.user_id";
				
		
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(showQuery);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	

}
}
