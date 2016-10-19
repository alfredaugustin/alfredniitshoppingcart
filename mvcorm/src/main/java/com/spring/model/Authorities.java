package com.spring.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="authorities")
public class Authorities {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int authoritiesId;
private String username;
private String authority;

public int getAuthoritiesId() {
	return authoritiesId;
}
public String getUsername() {
	return username;
}
public String getAuthority() {
	return authority;
}
public void setAuthoritiesId(int authoritiesId) {
	this.authoritiesId = authoritiesId;
}
public void setUsername(String username) {
	this.username = username;
}
public void setAuthority(String authority) {
	this.authority = authority;
}
}
