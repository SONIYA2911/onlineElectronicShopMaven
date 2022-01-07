package com.onlineelectronicshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineelectronicshop.daoImpl.ComponentDaoImpl;

@WebServlet("/updateProductServelt")
/**
 * Servlet implementation class updateComponentServelt
 */
public class updateComponentServelt extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ComponentDaoImpl comDao=new ComponentDaoImpl();
		HttpSession session=request.getSession();
		double price=Double.parseDouble(request.getParameter("price"));
		int comId1=Integer.parseInt(request.getParameter("componentId"));
		System.out.println(comId1);
		try {
			comDao.updateComponent(price, comId1);
		} catch (ClassNotFoundException e){
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e){
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("admin.jsp");
		doGet(request, response);
	}
}
