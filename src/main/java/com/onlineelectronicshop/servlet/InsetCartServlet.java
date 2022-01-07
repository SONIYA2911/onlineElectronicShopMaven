package com.onlineelectronicshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineelectronicshop.daoImpl.ComponentDaoImpl;
import com.onlineelectronicshop.daoImpl.UserDaoImpl;
import com.onlineelectronicshop.model.Cart;
@WebServlet("/insertcart")
/**
 * Servlet implementation class InsetCartServlet
 */
public class InsetCartServlet extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		//int userid1=session.getAttribute();
		
		ComponentDaoImpl comDao=new ComponentDaoImpl(); 
		UserDaoImpl userDaoImpl=new UserDaoImpl();
//		int userid1=UserDao.findUserId(UserName);
//		CartDao.insertCart(cart1);
//		doGet(request, response);
	}

}
