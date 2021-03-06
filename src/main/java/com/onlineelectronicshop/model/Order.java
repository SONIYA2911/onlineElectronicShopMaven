package com.onlineelectronicshop.model;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Objects;

public class Order {
    private int orderid;
	private int componentId;
	private int userId;
	private int quantity;
	private double totalPrice;
	private String address;
	private LocalDate orderDate;
	
	
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public LocalDate getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}
	public int getComponentId() {
		return componentId;
	}
	public void setComponentId(int componentId) {
		this.componentId = componentId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	public Order(int componentId, int userId, int quantity, double totalPrice, String address, LocalDate orderDate) {
		super();
		this.componentId = componentId;
		this.userId = userId;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.address = address;
		this.orderDate = orderDate;
	}
	public Order(int componentId, int userId, int quantity, double totalPrice, String address) {
		super();
		this.componentId = componentId;
		this.userId = userId;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.address = address;
	}
	
	public Order(int orderid, int componentId, int userId, int quantity, double totalPrice, String address,
			LocalDate orderDate) {
		super();
		this.orderid = orderid;
		this.componentId = componentId;
		this.userId = userId;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.address = address;
		this.orderDate = orderDate;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public int hashCode() {
		return Objects.hash(address, componentId, quantity, totalPrice, userId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Order other = (Order) obj;
		return Objects.equals(address, other.address) && componentId == other.componentId && quantity == other.quantity
				&& Double.doubleToLongBits(totalPrice) == Double.doubleToLongBits(other.totalPrice)
				&& userId == other.userId;
	}
	
	
	
}