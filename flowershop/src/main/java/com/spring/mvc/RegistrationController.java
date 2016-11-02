package com.spring.mvc;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.BillingAddress;
import com.spring.model.Customer;
import com.spring.model.ShippingAddress;
import com.spring.model.Users;
import com.spring.services.CustomerServices;

@Controller
public class RegistrationController 
{
	@Autowired
	private CustomerServices customerServices;

	public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

	@RequestMapping("/customer/registration")
	public ModelAndView getRegistrationForm()
	{
		Customer customer=new Customer();
		Users users=new Users();
		BillingAddress billingAddress=new BillingAddress();
		ShippingAddress shippingAddress=new ShippingAddress();
		
		customer.setUsers(users);
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		
		return new ModelAndView("registerCustomer","customer",customer);
	}

	@RequestMapping(value="/customer/registration",method=RequestMethod.POST)
	public String registerCustomer(@Valid @ModelAttribute(value="customer") Customer customer,
								   BindingResult result,
								   Model model)
	{
		if(result.hasErrors())
			return "registerCustomer";
		
		String username=customer.getUsers().getUsername();
		List<Customer> customersList=customerServices.getAllCustomers();
		
		for(Customer c:customersList)
		{
			if(username.equals(c.getUsers().getUsername()))
			{
				model.addAttribute("duplicateUname","This Username exists");
				return "registerCustomer";
			}
		}
		
		String email=customer.getCustomerEmail();
		for(Customer c:customersList)
		{
			if(email.equals(c.getCustomerEmail()))
			{
				model.addAttribute("duplicateEmail", "This E-mail ID exists");
				return "registerCustomer";
			}
		}	

		customerServices.addCustomer(customer);
		model.addAttribute("registrationSuccess","Registered successfully. Please login with the registered username and password");
		return "login";
	}
}
