package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")

public class Product {
	@Id
	@Column(name="product_id")
	@GeneratedValue(strategy=GenerationType.AUTO)

private int product_id;
private String product_category;
private String product_description;
private String product_manufacturer;
private String product_name;
private double product_price;
private int unit_in_stock;


public int getProduct_id() {
	return product_id;
}
public String getProduct_category() {
	return product_category;
}
public String getProduct_description() {
	return product_description;
}
public String getProduct_manufacturer() {
	return product_manufacturer;
}
public String getProduct_name() {
	return product_name;
}
public double getProduct_price() {
	return product_price;
}
public int getUnit_in_stock() {
	return unit_in_stock;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public void setProduct_category(String product_category) {
	this.product_category = product_category;
}
public void setProduct_description(String product_description) {
	this.product_description = product_description;
}
public void setProduct_manufacturer(String product_manufacturer) {
	this.product_manufacturer = product_manufacturer;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}
public void setProduct_price(double product_price) {
	this.product_price = product_price;
}
public void setUnit_in_stock(int unit_in_stock) {
	this.unit_in_stock = unit_in_stock;
}


}
