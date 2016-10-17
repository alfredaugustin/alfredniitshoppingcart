package com.spring.services;

import java.util.List;

import com.spring.model.Product;

public interface ProductService {
	List<Product> getAllProducts();
	Product getProductById(int product_id);
	void deleteProduct(int product_id);
}
