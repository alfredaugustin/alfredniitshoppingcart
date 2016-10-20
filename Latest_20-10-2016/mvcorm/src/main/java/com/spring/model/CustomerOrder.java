package com.spring.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="customerorder")
public class CustomerOrder 
{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int customerOrderId;

@OneToOne
@JoinColumn(name="customerid")
private Customer customer;

@OneToOne
@JoinColumn(name="billingAddressId")
private BillingAddress billingAddress;

@OneToOne
@JoinColumn(name="shipingAddressId")
private ShippingAddress shippingAddress;

@OneToOne
@JoinColumn(name="cartid")
private Cart cart;

public int getCustomerOrderId() {
	return customerOrderId;
}
public void setCustomerOrderId(int customerOrderId) {
	this.customerOrderId = customerOrderId;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public BillingAddress getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}

}
