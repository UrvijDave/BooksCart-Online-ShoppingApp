package com.BooksCart.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.BooksCart.dao.ProductDAO;
import com.BooksCart.dao.CustomerDao;
import com.BooksCart.model.Product;
import com.BooksCart.model.Customer;


@Controller
public class HomeController {

	//need to call methods of customerdaoimpl---- use autowired
	
	/*@Autowired
	private CustomerDAO customerDao;
	
	@RequestMapping("/")
	public String homePage() {

		System.out.println("Executing HomePage");
		return "index";
	}
*/
	
	
	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping("/")
	public String homePage() {

		System.out.println("Executing HomePage");
		return "index";
	}

	
/*	
	@RequestMapping("/homePage")
	public String homePage() {

		System.out.println("Executing HomePage");
		return "welcome";
	}
*/	
	
	 @RequestMapping("/login")
	    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
	            required = false) String logout, Model model) {
	        if (error!=null) {
	        	System.out.println(error);
	            model.addAttribute("error", "Invalid customername and password");
	        }

	        if(logout!=null) {
	            model.addAttribute("msg", "You have been logged out successfully.");
	        }

	        return "login";
	    }

	
		
	 
	 /*---------- ANYONE CAN REGISTER -----------*/
	 @Transactional
		@RequestMapping("/addCustomer")
		public String addCustomer(Model model) {
			Customer customer = new Customer();
			model.addAttribute("customer", customer);
			return "/addCustomer";
		}

	 
	 /*---------- USER_HOME -----------*/
	 @Transactional
		@RequestMapping("/Customer_Home")
		public String Customer_Home(Model model) {
			Customer customer = new Customer();
			model.addAttribute("customer", customer);
			return "/Customer_Home";
		} 
	 
	 
	 
		@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
		public ModelAndView addCustomerPost(@ModelAttribute("customer") Customer customer, BindingResult result,
				HttpServletRequest request) {
			if (result.hasErrors()) {
				ModelAndView mv1 = new ModelAndView("denied");
				return mv1;
			}
			System.out.println("inside addCustomer-post");
			System.out.println(customer.getCustomerName());
			
			customerDao.addCustomer(customer);
			
			ModelAndView mv = new ModelAndView("addCustomer");
			Customer customer1= new Customer();
			mv.addObject("customer", customer1);
			mv.addObject("message", "Registered Successfully");
			return mv;
			
		}
	 
	 
	
	/*-------contact us-----------*/
 	@RequestMapping("/contactus")
	public ModelAndView showContactUs()
	{
		System.out.println("Contact Us called.....");
		ModelAndView mv = new ModelAndView("contactus");
		mv.addObject("showContactUs", "true");
		return mv;
	}
	
	/*--------Books Page----------*/
	
 	@RequestMapping("/books")
	public ModelAndView showBooksPage()
	{
		ModelAndView mv = new ModelAndView("books");
		mv.addObject("msg", "You clicked books");
		mv.addObject("showBooksPage", "true");
		return mv;
	}	
 	
/*--------Category Page----------*/
	
 	@RequestMapping("/category")
	public ModelAndView showCategoryPage()
	{
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("msg", "You clicked on Category Page");
		mv.addObject("showCategoryPage", "true");
		return mv;
	}	
 	
 	
/*--------Product Page----------*/
	
 	@RequestMapping("/product")
	public ModelAndView showProductPage()
	{
		ModelAndView mv = new ModelAndView("product");
		mv.addObject("msg", "You clicked on Product Page");
		mv.addObject("showProductPage", "true");
		return mv;
	}

/*--------ProductList Page----------*/
	
 	@RequestMapping("/productList")
	public ModelAndView showProductListPage()
	{
		ModelAndView mv = new ModelAndView("productList");
		mv.addObject("msg", "You clicked on ProductList Page");
		mv.addObject("showProductListPage", "true");
		return mv;
	}
 	
 	
/*--------PublisherList Page----------*/
	
 	@RequestMapping("/publisherList")
	public ModelAndView showPublisherListPage()
	{
		ModelAndView mv = new ModelAndView("publisherList");
		mv.addObject("msg", "You clicked on PublisherList Page");
		mv.addObject("showPublisherListPage", "true");
		return mv;
	}	
 	
 	
 	
/*--------Category Page----------*/
	
 	@RequestMapping("/publisher")
	public ModelAndView showPublisherPage()
	{
		ModelAndView mv = new ModelAndView("publisher");
		mv.addObject("msg", "You clicked on Publisher Page");
		mv.addObject("showPublisherPage", "true");
		return mv;
	}	

/*--------Fiction Page----------*/
	
 	@RequestMapping("/fiction")
	public ModelAndView showFictionPage()
	{
		ModelAndView mv = new ModelAndView("fiction");
		mv.addObject("msg", "You clicked on Fiction Category");
		mv.addObject("showFictionPage", "true");
		return mv;
	}	
 	
/*--------Spiritual Page----------*/
	
 	@RequestMapping("/spiritual")
	public ModelAndView showSpiritualPage()
	{
		ModelAndView mv = new ModelAndView("spiritual");
		mv.addObject("msg", "You clicked on Spiritual Category");
		mv.addObject("showSpiritualPage", "true");
		return mv;
	}
/*--------Comic Page----------*/
	
 	@RequestMapping("/comic")
	public ModelAndView showComicPage()
	{
		ModelAndView mv = new ModelAndView("comic");
		mv.addObject("msg", "You clicked on Comic Category");
		mv.addObject("showComicePage", "true");
		return mv;
	}	
	

/*--------Biography Page----------*/
	
 	@RequestMapping("/biography")
	public ModelAndView showBiographyPage()
	{
		ModelAndView mv = new ModelAndView("biography");
		mv.addObject("msg", "You clicked on Biography Category");
		mv.addObject("showBiographyPage", "true");
		return mv;
	}	
 	
 	/*--------Validate Method----------*/	
	@RequestMapping("/validate")
	public ModelAndView validate(@RequestParam("id") String id, @RequestParam("password") String password)
	{
		System.out.println("id: " + id);
		System.out.println("pwd: " + password);
		System.out.print("In Validate Method");
		ModelAndView mv = new ModelAndView("index");
/*		CustomerDAO customerDAO = new CustomerDAO();
		
		if (customerDAO.isValidCredentials(id, password) == true)
		{
			mv.addObject("successMsg", "You logged in Successfully");
		}
		else
		{
			mv.addObject("errorMsg", "Invalid credentials. Try again");
		} */
		return mv;
	}
	
/*--------CustomerInventory Page----------*/
	
 	@RequestMapping("/customerInventory")
	public ModelAndView showcustomerInventoryPage()
	{
		ModelAndView mv = new ModelAndView("customerInventory");
		mv.addObject("msg", "You clicked on Register Page");
		mv.addObject("showcustomerInventoryPage", "true");
		return mv;
	}
 	
 	
/*---------- CART PAGE ----------*/
 	@RequestMapping("../cart")
	public ModelAndView showCartPage()
	{
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("msg", "You have clicked on Cart Page");
		mv.addObject("showCartPage", "true");
		return mv;
	}
 	
}