package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {
	@RequestMapping("/home.html")
	public ModelAndView helloWorld()
	{
		return new ModelAndView("welcome","sms","Lookin' good ,dude...");
	}
	
	@RequestMapping("/wish")
	public ModelAndView wishhelloWorld()
	{
		return new ModelAndView("wish","mms","wish this was easy");
	}

}
