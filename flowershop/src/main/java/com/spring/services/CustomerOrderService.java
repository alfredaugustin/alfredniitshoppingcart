package com.spring.services;

import com.spring.model.CustomerOrder;

public interface CustomerOrderService
{
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
