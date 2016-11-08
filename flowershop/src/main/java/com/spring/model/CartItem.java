package com.spring.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="cartitem")
public class CartItem implements Serializable
{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int cartItemId;

private int quantity;

private double price;

@ManyToOne
@JoinColumn(name="fid")
private Flower flower;

@ManyToOne
@JoinColumn(name="cartid")
@JsonIgnore
private Cart cart;

public int getCartItemId() {
	return cartItemId;
}
public void setCartItemId(int cartItemId) {
	this.cartItemId = cartItemId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public Flower getFlower() {
	return flower;
}
public void setFlower(Flower flower) {
	this.flower = flower;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}

}
