package com.spring.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity 
@Table(name="bookcategories")
public class Category {
@Id 
private int cid;
@Column(name="categoryname")
private String categoryName;
@OneToMany(mappedBy="category")
//@JoinColumn (name="cid")
List<Book> books;

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

public List<Book> getBooks()
{
	return books;
}

public void setBooks(List<Book> books)
{
	this.books=books;
}
}
