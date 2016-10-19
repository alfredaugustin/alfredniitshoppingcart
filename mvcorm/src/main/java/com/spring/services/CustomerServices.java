package com.spring.services;

import java.util.List;

import com.spring.model.Customer;

public interface CustomerServices 
{
void addCustomer(Customer customer);
List<Customer> getAllCustomers();
}
