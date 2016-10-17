
package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Product;

@Repository 
public class ProductDaoImpl implements ProductDao {
	@Autowired
private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() 
	{
	return sessionFactory;
	}

public void setSessionFactory(SessionFactory sessionFactory) 
{
	this.sessionFactory = sessionFactory;
}

	public List<Product> getAllProducts() 
	{
		/*Session session=sessionFactory.openSession();
		return session.createQuery("from Product").list();*/
		
		Session session=sessionFactory.openSession();
		List<Product> products=session.createQuery("from Product").list();
		session.close();
		return products;
	}

	public Product getProductById(int product_id)
	{
		Session session=sessionFactory.openSession();
		//select * from product where product_id=?
		Product product=(Product)session.get(Product.class, product_id);
		session.close();
		return product;
	}
	
	public void deleteProduct(int product_id)
	{
		Session session=sessionFactory.openSession();
		
		Product product=(Product)session.get(Product.class, product_id);
		
		session.delete(product);
		session.flush();
		session.close();
	}

}
