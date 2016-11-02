package com.spring.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity 
@Table(name="categories")
public class Category implements Serializable
{
@Id 
private int cid;

@Column(name="categoryname")
private String categoryName;

@OneToMany(mappedBy="category")
@JsonIgnore
List<Flower> flowers;

public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public List<Flower> getFlowers() {
	return flowers;
}
public void setFlowers(List<Flower> flowers) {
	this.flowers = flowers;
}

}
