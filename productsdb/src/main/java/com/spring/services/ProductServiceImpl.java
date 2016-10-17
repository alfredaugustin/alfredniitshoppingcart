package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.ProductDao;
import com.spring.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;
	
	
	public ProductDao getProductDao() 
	{
		return productDao;
	}
	
	public void setProductDao(ProductDao productDao) 
	{
		this.productDao = productDao;
	}

	@Transactional
	public List<Product> getAllProducts() 
	{
		return productDao.getAllProducts();
	}
	
	//@Transactional 
	public Product getProductById(int product_id)
	{
		return productDao.getProductById(product_id);
	}
	
	public void deleteProduct(int product_id)
	{
		productDao.deleteProduct(product_id);
	}

}
