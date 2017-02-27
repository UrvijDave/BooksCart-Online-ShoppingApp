package com.BooksCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BooksCart.dao.CustomerDao;
import com.BooksCart.model.Customer;


@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    private CustomerDao customerDao;

/*    @RequestMapping
    public String getCart(@AuthenticationPrincipal Customer activeCustomer){
    	System.out.println("getCart called....");
    	System.out.println(activeCustomer.getCustomerName());
        Customer customer = customerDao.getCustomerByCustomername (activeCustomer.getCustomerName());
        int cartId = customer.getCart().getCartId();
        System.out.println("Cart ID:"+cartId);
        return "redirect:/customer/cart/"+cartId;
    }
*/
    
    /*---------- USER----------*/
    
    @RequestMapping
    public String getCart(@AuthenticationPrincipal User activeCustomer){
    	System.out.println("getCart called....");
    	System.out.println(activeCustomer.getUsername());
        Customer customer = customerDao.getCustomerByCustomername (activeCustomer.getUsername());
        int cartId = customer.getCart().getCartId();
        System.out.println("Cart ID:"+cartId);
        return "redirect:/customer/cart/"+cartId;
    }
    
    
    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model) {
        model.addAttribute("cartId", cartId);

        return "cart";
    }

}
