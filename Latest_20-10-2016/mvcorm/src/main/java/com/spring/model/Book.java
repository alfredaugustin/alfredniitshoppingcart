package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

//import javax.annotation.Generated;

@Entity
@Table(name="bookapp")
public class Book 
{
@Id
@Column(name="isbn")
@GeneratedValue(strategy=GenerationType.AUTO)
private int isbn;
@NotEmpty(message="Mandatory field for title! OK??")
private String title;
@NotEmpty(message="Mandatory field for publishers! OK??")
@Column(name="publication")
private String publication;
@Min(value=100,message="must be greater than 100")
private double price;
private String author;
@ManyToOne 
@JoinColumn(name="cid")
//private int cid;
@JsonIgnore 
private Category category;

@Transient
private MultipartFile bookImage;

public MultipartFile getBookImage() {
	return bookImage;
}
public void setBookImage(MultipartFile bookImage) {
	this.bookImage = bookImage;
}

public int getIsbn() 
{
	return isbn;
}
public void setIsbn(int isbn) 
{
	this.isbn = isbn;
}
public String getTitle() 
{
	return title;
}
public void setTitle(String title) 
{
	this.title = title;
	//this.category.getCid();
}
public String getPublication() 
{
	return publication;
}
public void setPublication(String publication) 
{
	this.publication = publication;
}
public double getPrice() 
{
	return price;
}
public void setPrice(double price) 
{
	this.price = price;
}
public String getAuthor() {
	return author;
}

public void setAuthor(String author) {
	this.author = author;
}

public Category getCategory() {
	return category;
}

public void setCategory(Category category) {
	this.category = category;
}

}
