package com.onlineelectronicshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineelectronicshop.daoImpl.OrderDaoImpl;
import com.onlineelectronicshop.daoImpl.UserDaoImpl;
import com.onlineelectronicshop.daoImpl.WalletDaoImpl;
import com.onlineelectronicshop.model.Order;



/**
 * Servlet implementation class BuyServlet
 */

@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();	
		
		//int comId=Integer.parseInt(request.getParameter("CompoentId"));
		int comId=(int)session.getAttribute("componentId");
		System.out.println(comId);
		//String session.getAttribute("componentName");
		//System.out.println(comId);
		
		//walletBalance=0;
		//
		int quantity=Integer.parseInt(request.getParameter("quantity"));	
		System.out.println(quantity);
	
		int userId=(int)session.getAttribute("userId");
//		UserDaoImpl userDao=new UserDaoImpl();
//		int userId=userDao.findUserId(userName);			
	
		System.out.println("user id:"+userId);
		
		
		double price1=(double) (session.getAttribute("price"));	
		System.out.println(price1);
		double totalPrice=(price1 * quantity);
		
		String address=request.getParameter("address");
		System.out.println(address);
		WalletDaoImpl walletDao=new WalletDaoImpl();
		int userWallet=0;
		
		System.out.println("userWallet"+userWallet);
		 double wallbalance=userWallet-totalPrice;
		 
		 System.out.println("price"+price1);
		 System.out.println("totalprice"+totalPrice);
		 
		 System.out.println("walletbalance"+wallbalance);
		 
		 try {
			 userWallet = walletDao.walletBalance(userId);
			 System.out.println(userWallet);
			 if(userWallet> totalPrice) {
			 double Blanceamount=userWallet - totalPrice;
			 System.out.println(Blanceamount);
			walletDao.updateWallet(Blanceamount, userId);
			OrderDaoImpl orderDao=new OrderDaoImpl();			
			Order order=new Order(comId,userId,quantity,totalPrice,address);
			orderDao.insertOrder(order);
			 
		response.sendRedirect("OrderSuccess.jsp");
		 }
		 else {
			 response.getWriter().println("low balance");
		 }
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }
	}

}
