package com.BooksCart.dao;

import com.BooksCart.model.CustomerOrder;

public interface CustomerOrderDao {

    void addCustomerOrder(CustomerOrder customerOrder);

	 double getCustomerOrderGrandTotal(int cartId);

}
