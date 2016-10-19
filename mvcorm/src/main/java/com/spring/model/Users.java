package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class Users 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int usersId;
	@Column(unique=true)
private String username;
private String password;
private boolean enabled;

@OneToOne(mappedBy="users")
private Customer customer;

public int getUserId() {
	return usersId;
}
public void setUserId(int usersId) {
	this.usersId = usersId;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
