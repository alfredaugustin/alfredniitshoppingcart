package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {
@Autowired
private SessionFactory sessionFactory;

public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

public void addCartItem(CartItem cartItem) {
	Session session=sessionFactory.openSession();
	session.saveOrUpdate(cartItem);
	session.flush();
	session.close();
}

public void removeCartItem(int cartItemId) {
	Session session=sessionFactory.openSession();
	CartItem cartItem=(CartItem)session.get(CartItem.class, cartItemId);
	session.delete(cartItem);
	session.flush();
	session.close();
}

public void removeAllCartItems(Cart cart) 
{
	Customer customer=cart.getCustomer();
	System.out.println("Customer " + customer);
	System.out.println("Billing Address " + customer.getBillingAddress());
	System.out.println("Shipping address " + cart.getCustomer().getShippingAddress());
	Session session=sessionFactory.openSession();
	session.merge(customer);
	session.flush();
	session.close();

	List<CartItem> cartItems=cart.getCartItem();
	for(CartItem cartItem:cartItems)
	{
		removeCartItem(cartItem.getCartItemId());
	}
}

}
