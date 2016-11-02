package com.spring.model;

import java.io.Serializable;

//import java.io.Serializable;

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
//import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

//import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="flowerapp")
public class Flower implements Serializable
{
	
	@Id
	@Column(name="fid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int fid;
	
	@NotEmpty(message="Mandatory field for name!")
	private String name;
	
	@NotEmpty(message="Mandatory field for vendor!")
	@Column(name="vendor")
	private String vendor;
	
	@Min(value=100,message="Must be greater than 100")
	private double price;
	
	private String description;
	
	@ManyToOne 
	@JoinColumn(name="cid")
	//@JsonIgnore 
	private Category category;

	@Transient
	private MultipartFile flowerImage;

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public MultipartFile getFlowerImage() {
		return flowerImage;
	}

	public void setFlowerImage(MultipartFile flowerImage) {
		this.flowerImage = flowerImage;
	}


}
