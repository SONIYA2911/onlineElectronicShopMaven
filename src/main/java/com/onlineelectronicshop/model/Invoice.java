package com.onlineelectronicshop.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class Invoice {

	private Components component;
	private User user;
	private Order order;
	private Date orderDate;
	public Components getComponent() {
		return component;
	}
	public void setComponent(Components component) {
		this.component = component;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Order getCart() {
		return order;
	}
	public void setCart(Order order) {
		this.order = order;
	}
	
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Invoice(Components component, User user, Order order, Date orderDate) {
		super();
		this.component = component;
		this.user = user;
		this.order = order;
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "Invoice [component=" + component + ", user=" + user + ", cart=" + order + 
				 ", orderDate=" + orderDate + "]";
	}
	public Invoice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}