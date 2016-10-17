package com.spring.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Product;
import com.spring.services.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	public ProductService getProductService() 
	{
		return productService;
	}

	public void setProductService(ProductService productService) 
	{
		this.productService = productService;
	}

	//http://localhost:8080/productsdb/getAllProducts
	@RequestMapping("/getAllProducts")
	public ModelAndView getAllProducts()
	{
		List<Product> products = productService.getAllProducts();
		return new ModelAndView("productsList","products",products);
		//WEB-INF/views/productsList.jsp
	}

	@RequestMapping("/getProductById/{product_id}")
	public ModelAndView getProductById(@PathVariable(value="product_id") int product_id)
	{
		Product p=productService.getProductById(product_id);
		return new ModelAndView("productPage","productObj",p);
	}

	@RequestMapping("/delete/{product_id}")
	public String deleteProduct(@PathVariable (value="product_id") int product_id)
	{
		productService.deleteProduct(product_id);
		return "redirect:/getAllProducts";
	}

}
