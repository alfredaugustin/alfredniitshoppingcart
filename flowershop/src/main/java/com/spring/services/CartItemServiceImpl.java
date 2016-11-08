package com.spring.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.spring.dao.CartItemDao;
import com.spring.model.Cart;
import com.spring.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService {
@Autowired
private CartItemDao cartItemDao;

public CartItemDao getCartItemDao() {
	return cartItemDao;
}

public void setCartItemDao(CartItemDao cartItemDao) {
	this.cartItemDao = cartItemDao;
}

public void addCartItem(CartItem cartItem) {
	cartItemDao.addCartItem(cartItem);
}

public void removeCartItem(int cartItemId) {
	cartItemDao.removeCartItem(cartItemId);		
}

public void removeAllCartItems(Cart cart) {
	cartItemDao.removeAllCartItems(cart);
}

}
