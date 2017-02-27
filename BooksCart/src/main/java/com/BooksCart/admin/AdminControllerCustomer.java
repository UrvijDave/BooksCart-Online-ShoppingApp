package com.BooksCart.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.BooksCart.dao.CustomerDao;
import com.BooksCart.model.Product;
import com.BooksCart.model.Customer;

@Controller
@RequestMapping("/admin")
public class AdminControllerCustomer {

	private Path path;

	@Autowired
	private CustomerDao customerDao;

	@Transactional
	@RequestMapping("/customerInventory")
	
	public String getCustomers(Model model) {
		List<Customer> customers = customerDao.getCustomerList();
		model.addAttribute("customers", customers);
		return "customerInventory";
		
	}

	@Transactional
	@RequestMapping("/addCustomer")
	public String addCustomer(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "addCustomer";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String addCustomerPost(@ModelAttribute("customer") Customer customer, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "denied";
		}
		System.out.println("inside addCustomer-post");
		System.out.println(customer.getCustomerName());
		//System.out.println(product.getProductCategory());
		
		customerDao.addCustomer(customer);
		return "redirect:/admin/customerInventory";
	}
	
	/*---------- VIEW CUSTOMER LIST----------*/
	
	@RequestMapping("/viewCustomer/{id}")
	public String viewCustomer(@PathVariable("id") int id, Model model) {
		Customer customer = customerDao.getCustomerById(id);
		model.addAttribute("customer", customer);
		return "viewCustomer";
	}
	
	/*---------- CUSTOMER LIST----------*/
	@Transactional
	@RequestMapping("/customerList")
	public String customerList(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "customerList";
	}
	
	@Transactional
	@RequestMapping("/customer/editCustomer/{id}")
	public String editCustomer(@PathVariable("id") int id, Model model) {
		Customer customer = customerDao.getCustomerById(id);
		model.addAttribute("customer", customer);
		return "editCustomer";
	}

	@Transactional
	@RequestMapping(value = "/customer/editCustomer", method = RequestMethod.POST)
	public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "editCustomer";
		}

		// MultipartFile customerImage = customer.getCustomerImage();

		// String rootDirectory =
		// request.getSession().getServletContext().getRealPath("/");
		// path = Paths.get(rootDirectory +
		// "\\WEB-INF\\resources\\images\\"+customer.getCustomerId()+".jpg");
		path = Paths.get("D:\\img\\" + customer.getCustomerId() + ".jpg");

		// if (customerImage != null && !customerImage.isEmpty()) {
		// try {
		// customerImage.transferTo(new File(path.toString()));
		// } catch (Exception e) {
		// e.printStackTrace();
		// throw new RuntimeException("Customer image saving failed.", e);
		// }
		// }

		customerDao.editCustomer(customer);

		return "redirect:/admin/customerInventory";
	}

	
    @Transactional
    @RequestMapping("/approveCustomer/{id}")
    public String approveCustomer(@PathVariable int id, Model model, HttpServletRequest request) {
        System.out.println("approved customer");
        Customer customer = customerDao.getCustomerById(id);
        customer.setEnabled(true);
        customerDao.approveCustomer(customer);

        return "redirect:/admin/customerInventory";
    }
	
	@Transactional
	@RequestMapping("/customer/deleteCustomer/{id}")
	public String deleteCustomer(@PathVariable int id, Model model, HttpServletRequest request) {

		// String rootDirectory =
		// request.getSession().getServletContext().getRealPath("/");
		// path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" +
		// id + ".jpg");
		path = Paths.get("D:\\img\\" + id + ".jpg");
		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		Customer customer = customerDao.getCustomerById(id);
		customerDao.deleteCustomer(customer);

		return "redirect:/admin/customerInventory";
	}
}
