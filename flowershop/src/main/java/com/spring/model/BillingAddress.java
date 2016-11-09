package com.spring.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="billingaddress")
public class BillingAddress implements Serializable
{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int billingAddressId;

//@NotEmpty(message="Mandatory field")
private String streetName;

private String apartmentNumber;

private String city;

private String state;

private String country;

private String zipcode;

@OneToOne(mappedBy="billingAddress")
private Customer customer;

public int getBillingAddressId() {
	return billingAddressId;
}

public void setBillingAddressId(int billingAddressId) {
	this.billingAddressId = billingAddressId;
}

public String getStreetName() {
	return streetName;
}

public void setStreetName(String streetName) {
	this.streetName = streetName;
}

public String getApartmentNumber() {
	return apartmentNumber;
}

public void setApartmentNumber(String apartmentNumber) {
	this.apartmentNumber = apartmentNumber;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

public String getZipcode() {
	return zipcode;
}

public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}

public Customer getCustomer() {
	return customer;
}

public void setCustomer(Customer customer) {
	this.customer = customer;
}

}