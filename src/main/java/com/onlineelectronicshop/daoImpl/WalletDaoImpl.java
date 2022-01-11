package com.onlineelectronicshop.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineelectronicshop.util.ConnectionUtil;

public class WalletDaoImpl {

	//wallet
	public int walletBalance(int id) throws SQLException {
		Connection con=ConnectionUtil.getDbConnection();
		String query="select wallet from user_details where user_id=?";
		System.out.println("walletballance");
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()) {
			
			return rs.getInt(1);

		}
		return -1;
	}
	
    //update wallet
	public int updateWallet(Double amount,int userId) throws SQLException {
		Connection con=ConnectionUtil.getDbConnection();
		String query="update user_details set wallet=? where user_id=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setDouble(1, amount);
		pstmt.setInt(2, userId);
		int result=pstmt.executeUpdate();
		System.out.println(result);
		pstmt.executeUpdate("commit");
		return result;
			
	}

}
