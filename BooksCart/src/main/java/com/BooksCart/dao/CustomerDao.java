package com.BooksCart.dao;

import java.util.List;

import com.BooksCart.model.Customer;


public interface CustomerDao {
    
   
    	List<Customer> getCustomerList();

    	Customer getCustomerById(int id);

    	void addCustomer(Customer customer);

    	void editCustomer(Customer customer);

    	void deleteCustomer(Customer customer);

    	public Customer getCustomerByCustomername(String customername);

    	int validateCustomer(String getcustomername, String getpassword);

    	void approveCustomer(Customer customer);
    	
    	
    }

    
