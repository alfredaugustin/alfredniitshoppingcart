package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController 
{
	
@RequestMapping("/test")
public ModelAndView testing()
{
	return new ModelAndView("test","message","test success");
}

@RequestMapping("/home")
public String homePage()
{
	return "home";
}

@RequestMapping("/about")
public String aboutUs()
{
	return "about";
}

@RequestMapping("/login")
public String login(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout, 
		Model model)
{
		if(error!=null)
	model.addAttribute("error","Invalid username and password");
		
		if(logout!=null)
	model.addAttribute("logout","You have logged out successfully");
		
		return "login";
}

}