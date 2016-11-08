package com.spring.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.spring.model.Flower;
import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.services.FlowerService;
import com.spring.services.CartItemService;
import com.spring.services.CartService;
import com.spring.services.CustomerServices;

@Controller
public class CartItemController 
{
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerServices customerServices;
	@Autowired
	private FlowerService flowerService;
	
	@Autowired
	private CartService cartService;
	
	public CartItemService getCartItemService() {
		return cartItemService;
	}
	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}
	public CustomerServices getCustomerServices() {
		return customerServices;
	}
	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}
	public FlowerService getFlowerService() {
		return flowerService;
	}
	public void setFlowerService(FlowerService flowerService) {
		this.flowerService = flowerService;
	}
	
	@RequestMapping("/cart/add/{fid}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value = "fid") int fid)
	{
		//Is to get the username of the customer
		//User object contains details about the user -username , password, activeuser or not
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Customer customer=customerServices.getCustomerByUsername(username);
		System.out.println("Customer is " + customer.getCustomerEmail() );
		Cart cart=customer.getCart();
		
		List<CartItem> cartItems=cart.getCartItem();
		Flower flower=flowerService.getFlowerByFid(fid);
		for(int i=0;i<cartItems.size();i++){
			CartItem cartItem=cartItems.get(i);
			if(flower.getFid()==cartItem.getFlower().getFid()){
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				/*double totprice=cartItem.getQuantity() * cartItem.getFlower().getPrice();
				cart.setTotalPrice(totprice);*/
				cartItem.setPrice(cartItem.getQuantity() * cartItem.getFlower().getPrice());
				cartItemService.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setFlower(flower);
		cartItem.setPrice(flower.getPrice() * 1);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
	}
	
	@RequestMapping("/cart/removecartitem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value="cartItemId") int cartItemId){
		cartItemService.removeCartItem(cartItemId);
	}

	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value="cartId") int cartId){
		Cart cart=cartService.getCartByCartId(cartId);
		cartItemService.removeAllCartItems(cart);
	}

}
