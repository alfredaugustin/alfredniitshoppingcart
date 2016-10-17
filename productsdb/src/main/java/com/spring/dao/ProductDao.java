package com.spring.dao;

import java.util.List;

import com.spring.model.Product;

public interface ProductDao 
{
	List<Product> getAllProducts();
	Product getProductById(int product_id);
	void deleteProduct(int product_id);
}
