package com.BooksCart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.BooksCart.dao.CartDao;
import com.BooksCart.dao.CartItemDao;
import com.BooksCart.dao.CustomerDao;
import com.BooksCart.dao.ProductDAO;
import com.BooksCart.model.Cart;
import com.BooksCart.model.CartItem;
import com.BooksCart.model.Customer;
import com.BooksCart.model.Product;

@Controller
@RequestMapping("/rest/cart")
public class CartResources {

    @Autowired
    private CartDao cartService;

    @Autowired
    private CartItemDao cartItemService;

    @Autowired
    private CustomerDao customerService;

    @Autowired
    private ProductDAO productService;

    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById (@PathVariable(value = "cartId") int cartId) {
        return cartService.getCartById(cartId);
    }

    @RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem (@PathVariable(value ="productId") int productId, @AuthenticationPrincipal User activeCustomer) {
    	
    	Customer customer = customerService.getCustomerByCustomername(activeCustomer.getUsername());    	
    	if(customer==null)
    	{
    		System.out.println("Customer object is null.....");
    	}
        Cart cart = customer.getCart();
        if(cart==null)
    	{
    		System.out.println("Cart object is null.....");
    	}
        System.out.println("productId=.............."+productId);
        Product product = productService.getProductById(productId);
        if(product==null)
    	{
    		System.out.println("Product object is null.....");
    	}
        else
        {
        	System.out.println("Product is not null.....");
        }
        List<CartItem> cartItems = cart.getCartItems();
        System.out.println("cartItems.size()=...."+cartItems.size());
        if(cartItems.size()==0)
    	{
    		System.out.println("CartItem object is null.....");
    	}
        
        else
        {
        	System.out.println("CartItem is not Null.....");
        }
        
        
      //NEW LINE ADDED
        System.out.println("cartItems.size()= " + cartItems.size());
    	System.out.println("productId=====.............."+productId);
    	System.out.println(activeCustomer.getUsername());
        
        for (int i=0; i<cartItems.size(); i++) {
            if(product.getProductId()==cartItems.get(i).getProduct().getProductId())
            {
                CartItem cartItem = cartItems.get(i);
                cartItem.setQuantity(cartItem.getQuantity()+1);
                cartItem.setTotalPrice(product.getProductPrice()*cartItem.getQuantity());
                cartItemService.addCartItem(cartItem);

                return;
            }
        }

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setQuantity(1);
        cartItem.setTotalPrice(product.getProductPrice()*cartItem.getQuantity());
        cartItem.setCart(cart);
        cartItemService.addCartItem(cartItem);
    }

    @RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem (@PathVariable(value = "productId") int productId) {
        CartItem cartItem = cartItemService.getCartItemByProductId(productId);
        cartItemService.removeCartItem(cartItem);

    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartId") int cartId) {
        Cart cart = cartService.getCartById(cartId);
        cartItemService.removeAllCartItems(cart);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
    public void handleClientErrors (Exception e) {}

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
    public void handleServerErrors (Exception e) {}
}
