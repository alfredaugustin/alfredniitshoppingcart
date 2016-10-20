package com.spring.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int cartId;

@OneToMany(mappedBy="cart",cascade=CascadeType.ALL)
private List<CartItem> cartItem;

@OneToOne
@JoinColumn(name="customerid")
private Customer cutomer;
private double grandTotal;

public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}
public List<CartItem> getCartItem() {
	return cartItem;
}
public void setCartItem(List<CartItem> cartItem) {
	this.cartItem = cartItem;
}
public Customer getCutomer() {
	return cutomer;
}
public void setCutomer(Customer cutomer) {
	this.cutomer = cutomer;
}
public double getGrandTotal() {
	return grandTotal;
}
public void setGrandTotal(double grandTotal) {
	this.grandTotal = grandTotal;
}

}
