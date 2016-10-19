package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Authorities;
import com.spring.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao 
{
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

	public void addCustomer(Customer customer) 
	{
		Session session=sessionFactory.openSession();
		customer.getUsers().setEnabled(true);
		Authorities authorities=new Authorities();
		String username=customer.getUsers().getUsername();
		authorities.setUsername(username);
		authorities.setAuthority("ROLE_USER");
		
		session.save(customer);
		session.save(authorities);
		session.flush();
		session.close();
	}

	public List<Customer> getAllCustmers() 
	{
		Session session=sessionFactory.openSession();
		List<Customer> customerList=session.createQuery("from Customer").list();
		return customerList;
	}

}