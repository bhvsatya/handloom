package com.klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HandloomController {
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	
	@GetMapping("admindashboard")
	public ModelAndView admindashboard()
	{
		ModelAndView mv=new ModelAndView("admin_dashboard");
		return mv;
	}
	
	@GetMapping("artisandashboard")
	public ModelAndView artisandashboard()
	{
		ModelAndView mv=new ModelAndView("artisan_dashboard");
		return mv;
	}
	
	@GetMapping("buyerdashboard")
	public ModelAndView buyerdashboard()
	{
		ModelAndView mv=new ModelAndView("buyer_dashboard");
		return mv;
	}
	@GetMapping("contact")
	public ModelAndView contact()
	{
		ModelAndView mv=new ModelAndView("contact");
		return mv;
	}
	@GetMapping("login")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	@GetMapping("marketingdashboard")
	public ModelAndView marketingdashboard()
	{
		ModelAndView mv=new ModelAndView("marketing_dashboard");
		return mv;
	}
	@GetMapping("register")
	public ModelAndView register()
	{
		ModelAndView mv=new ModelAndView("register");
		return mv;
	}
	@GetMapping("shop")
	public ModelAndView shop()
	{
		ModelAndView mv=new ModelAndView("shop");
		return mv;
	}
	@GetMapping("home")
	public ModelAndView home1()
	{
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}

}
